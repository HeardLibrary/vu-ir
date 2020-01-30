<!--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

-->
<!--
    Main structure of the page, determines where
    header, footer, body, navigation are structurally rendered.
    Rendering of the header, footer, trail and alerts

    Author: art.lowel at atmire.com
    Author: lieven.droogmans at atmire.com
    Author: ben at atmire.com
    Author: Alexey Maslov

-->

<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
    xmlns:dri="http://di.tamu.edu/DRI/1.0/"
    xmlns:mets="http://www.loc.gov/METS/"
    xmlns:xlink="http://www.w3.org/TR/xlink/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:dim="http://www.dspace.org/xmlns/dspace/dim"
    xmlns:xhtml="http://www.w3.org/1999/xhtml"
    xmlns:mods="http://www.loc.gov/mods/v3"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:confman="org.dspace.core.ConfigurationManager"
    xmlns="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="i18n dri mets xlink xsl dim xhtml mods dc confman">

    <xsl:output indent="yes"/>

    <!--
        Requested Page URI. Some functions may alter behavior of processing depending if URI matches a pattern.
        Specifically, adding a static page will need to override the DRI, to directly add content.
    -->
    <xsl:variable name="request-uri" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']"/>

    <!--
        The starting point of any XSL processing is matching the root element. In DRI the root element is document,
        which contains a version attribute and three top level elements: body, options, meta (in that order).

        This template creates the html document, giving it a head and body. A title and the CSS style reference
        are placed in the html head, while the body is further split into several divs. The top-level div
        directly under html body is called "ds-main". It is further subdivided into:
            "ds-header"  - the header div containing title, subtitle, trail and other front matter
            "ds-body"    - the div containing all the content of the page; built from the contents of dri:body
            "ds-options" - the div with all the navigation and actions; built from the contents of dri:options
            "ds-footer"  - optional footer div, containing misc information

        The order in which the top level divisions appear may have some impact on the design of CSS and the
        final appearance of the DSpace page. While the layout of the DRI schema does favor the above div
        arrangement, nothing is preventing the designer from changing them around or adding new ones by
        overriding the dri:document template.
    -->
    <xsl:template match="dri:document">
        <html class="no-js">
            <!-- First of all, build the HTML head element -->
            <xsl:call-template name="buildHead"/>
            <!-- Then proceed to the body -->

            <!--paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/-->
            <xsl:text disable-output-escaping="yes">&lt;!--[if lt IE 7 ]&gt; &lt;body class="ie6"&gt; &lt;![endif]--&gt;
                &lt;!--[if IE 7 ]&gt;    &lt;body class="ie7"&gt; &lt;![endif]--&gt;
                &lt;!--[if IE 8 ]&gt;    &lt;body class="ie8"&gt; &lt;![endif]--&gt;
                &lt;!--[if IE 9 ]&gt;    &lt;body class="ie9"&gt; &lt;![endif]--&gt;
                &lt;!--[if (gt IE 9)|!(IE)]&gt;&lt;!--&gt;&lt;body&gt;&lt;!--&lt;![endif]--&gt;</xsl:text>

            <xsl:choose>
              <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='framing'][@qualifier='popup']">
                <xsl:apply-templates select="dri:body/*"/>
              </xsl:when>
                  <xsl:otherwise>
                    <div id="ds-main">
                        <!--The header div, complete with title, subtitle and other junk-->
                        <xsl:call-template name="buildHeader"/>

                        <!--The trail is built by applying a template over pageMeta's trail children. -->
                        <xsl:call-template name="buildTrail"/>

                        <!--javascript-disabled warning, will be invisible if javascript is enabled-->
                        <div id="no-js-warning-wrapper" class="hidden">
                            <div id="no-js-warning">
                                <div class="notice failure">
                                    <xsl:text>JavaScript is disabled for your browser. Some features of this site may not work without it.</xsl:text>
                                </div>
                            </div>
                        </div>


                        <!--ds-content is a groups ds-body and the navigation together and used to put the clearfix on, center, etc.
                            ds-content-wrapper is necessary for IE6 to allow it to center the page content-->
                        <div id="ds-content-wrapper">
                            <div id="ds-content" class="clearfix">
                                <!--
                               Goes over the document tag's children elements: body, options, meta. The body template
                               generates the ds-body div that contains all the content. The options template generates
                               the ds-options div that contains the navigation and action options available to the
                               user. The meta element is ignored since its contents are not processed directly, but
                               instead referenced from the different points in the document. -->
                                <xsl:apply-templates/>
                            </div>
                        </div>


                        <!--
                            The footer div, dropping whatever extra information is needed on the page. It will
                            most likely be something similar in structure to the currently given example. -->
                        <xsl:call-template name="buildFooter"/>

                    </div>

                </xsl:otherwise>
            </xsl:choose>
                <!-- Javascript at the bottom for fast page loading -->
              <xsl:call-template name="addJavascript"/>

            <xsl:text disable-output-escaping="yes">&lt;/body&gt;</xsl:text>
        </html>
    </xsl:template>

        <!-- The HTML head element contains references to CSS as well as embedded JavaScript code. Most of this
        information is either user-provided bits of post-processing (as in the case of the JavaScript), or
        references to stylesheets pulled directly from the pageMeta element. -->
    <xsl:template name="buildHead">
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

            <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

            <!--  Mobile Viewport Fix
                  j.mp/mobileviewport & davidbcalhoun.com/2010/viewport-metatag
            device-width : Occupy full width of the screen in its current orientation
            initial-scale = 1.0 retains dimensions instead of zooming out if page height > device height
            maximum-scale = 1.0 retains dimensions instead of zooming in if page width < device width
            -->
            <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0"/>

            <link rel="shortcut icon">
                <xsl:attribute name="href">
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                    <xsl:text>/themes/</xsl:text>
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                    <xsl:text>/images/favicon.ico</xsl:text>
                </xsl:attribute>
            </link>
            <link rel="apple-touch-icon">
                <xsl:attribute name="href">
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                    <xsl:text>/themes/</xsl:text>
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                    <xsl:text>/images/apple-touch-icon.png</xsl:text>
                </xsl:attribute>
            </link>

            <meta name="Generator">
              <xsl:attribute name="content">
                <xsl:text>DSpace</xsl:text>
                <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='dspace'][@qualifier='version']">
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='dspace'][@qualifier='version']"/>
                </xsl:if>
              </xsl:attribute>
            </meta>

            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='ROBOTS'][not(@qualifier)]">
                <meta name="ROBOTS">
                    <xsl:attribute name="content">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='ROBOTS']"/>
                    </xsl:attribute>
                </meta>
            </xsl:if>

            <!-- Add stylesheets -->
            
            <!-- reference to VU general Styles -->
            <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,700" />
            <link rel="stylesheet"  type="text/css"  href="//use.fontawesome.com/releases/v5.1.0/css/all.css"/>
            <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
            <link rel="stylesheet" type="text/css" href="//cdn.vanderbilt.edu/vu-www4/omni/css/vu-main.css" />
            <link rel="stylesheet" type="text/css" href="//www.library.vanderbilt.edu/_resources/overrides.css" media="screen" />  


            <!-- local styles --> 
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='stylesheet']">
                <link rel="stylesheet" type="text/css">
                    <xsl:attribute name="media">
                        <xsl:value-of select="@qualifier"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/themes/</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                        <xsl:text>/</xsl:text>
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </link>
            </xsl:for-each>

            <!-- Add syndication feeds -->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='feed']">
                <link rel="alternate" type="application">
                    <xsl:attribute name="type">
                        <xsl:text>application/</xsl:text>
                        <xsl:value-of select="@qualifier"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </link>
            </xsl:for-each>

            <!--  Add OpenSearch auto-discovery link -->
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='opensearch'][@qualifier='shortName']">
                <link rel="search" type="application/opensearchdescription+xml">
                    <xsl:attribute name="href">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='scheme']"/>
                        <xsl:text>://</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='serverName']"/>
                        <xsl:text>:</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='serverPort']"/>
                        <xsl:value-of select="$context-path"/>
                        <xsl:text>/</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='opensearch'][@qualifier='autolink']"/>
                    </xsl:attribute>
                    <xsl:attribute name="title" >
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='opensearch'][@qualifier='shortName']"/>
                    </xsl:attribute>
                </link>
            </xsl:if>

            <!-- The following javascript removes the default text of empty text areas when they are focused on or submitted -->
            <!-- There is also javascript to disable submitting a form when the 'enter' key is pressed. -->
                        <script type="text/javascript">
                                //Clear default text of empty text areas on focus
                                function tFocus(element)
                                {
                                        if (element.value == '<i18n:text>xmlui.dri2xhtml.default.textarea.value</i18n:text>'){element.value='';}
                                }
                                //Clear default text of empty text areas on submit
                                function tSubmit(form)
                                {
                                        var defaultedElements = document.getElementsByTagName("textarea");
                                        for (var i=0; i != defaultedElements.length; i++){
                                                if (defaultedElements[i].value == '<i18n:text>xmlui.dri2xhtml.default.textarea.value</i18n:text>'){
                                                        defaultedElements[i].value='';}}
                                }
                                //Disable pressing 'enter' key to submit a form (otherwise pressing 'enter' causes a submission to start over)
                                function disableEnterKey(e)
                                {
                                     var key;

                                     if(window.event)
                                          key = window.event.keyCode;     //Internet Explorer
                                     else
                                          key = e.which;     //Firefox and Netscape

                                     if(key == 13)  //if "Enter" pressed, then disable!
                                          return false;
                                     else
                                          return true;
                                }

                                function FnArray()
                                {
                                    this.funcs = new Array;
                                }

                                FnArray.prototype.add = function(f)
                                {
                                    if( typeof f!= "function" )
                                    {
                                        f = new Function(f);
                                    }
                                    this.funcs[this.funcs.length] = f;
                                };

                                FnArray.prototype.execute = function()
                                {
                                    for( var i=0; i <xsl:text disable-output-escaping="yes">&lt;</xsl:text> this.funcs.length; i++ )
                                    {
                                        this.funcs[i]();
                                    }
                                };

                                var runAfterJSImports = new FnArray();
            </script>

            <!-- Add the title in -->
            <xsl:variable name="page_title" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title']" />
            <title>
                <xsl:choose>
                        <xsl:when test="starts-with($request-uri, 'page/about')">
                                <xsl:text>About This Repository</xsl:text>
                        </xsl:when>

                        <xsl:when test="starts-with($request-uri, 'page/categories')">
                                <xsl:text>Communities and Collections</xsl:text>
                        </xsl:when>

                        <xsl:when test="not($page_title)">
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                        </xsl:when>
                        <xsl:when test="$page_title = ''">
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                        </xsl:when>
                        <xsl:otherwise>
                                <xsl:copy-of select="$page_title/node()" />
                        </xsl:otherwise>
                </xsl:choose>
            </title>

            <!-- Head metadata in item pages -->
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='xhtml_head_item']">
                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='xhtml_head_item']"
                              disable-output-escaping="yes"/>
            </xsl:if>

            <!-- Add all Google Scholar Metadata values -->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[substring(@element, 1, 9) = 'citation_']">
                <meta name="{@element}" content="{.}"></meta>
            </xsl:for-each>

            <!-- Add MathJAX JS library to render scientific formulas-->
            <xsl:if test="confman:getProperty('webui.browse.render-scientific-formulas') = 'true'">
                <script type="text/x-mathjax-config">
                    MathJax.Hub.Config({
                      tex2jax: {
                        ignoreClass: "detail-field-data|detailtable|exception"
                      },
                      TeX: {
                        Macros: {
                          AA: '{\\mathring A}'
                        }
                      }
                    });
                </script>
                <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML">&#160;</script>
            </xsl:if>

        </head>
    </xsl:template>


    <!-- The header (distinct from the HTML head element) contains the title, subtitle, login box and various
        placeholders for header images -->
    <xsl:template name="buildHeader_old">
        <div id="ds-header-wrapper">
            <div id="ds-header" class="clearfix">
                <a id="ds-header-logo-link">
                    <xsl:attribute name="href">
                        <xsl:value-of
                                select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/</xsl:text>
                    </xsl:attribute>
                    <span id="ds-header-logo">&#160;</span>
                    <span id="ds-header-logo-text">
                       <i18n:text>xmlui.dri2xhtml.structural.head-subtitle</i18n:text>
                    </span>
                </a>
                <div id="ds-user-box">
                    <xsl:choose>
                        <xsl:when test="/dri:document/dri:meta/dri:userMeta/@authenticated = 'yes'">
                            <p>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='url']"/>
                                    </xsl:attribute>
                                    <i18n:text>xmlui.dri2xhtml.structural.profile</i18n:text>
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                    dri:metadata[@element='identifier' and @qualifier='firstName']"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                    dri:metadata[@element='identifier' and @qualifier='lastName']"/>
                                </a>
                                <xsl:text> | </xsl:text>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='logoutURL']"/>
                                    </xsl:attribute>
                                    <i18n:text>xmlui.dri2xhtml.structural.logout</i18n:text>
                                </a>
                            </p>
                        </xsl:when>
                        <xsl:otherwise>
                            <p>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='loginURL']"/>
                                    </xsl:attribute>
                                    <i18n:text>xmlui.dri2xhtml.structural.login</i18n:text>
                                </a>
                            </p>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>

                <xsl:call-template name="languageSelection" />
                
            </div>
        </div>
    </xsl:template>

    <xsl:template name="buildHeader">
    <!-- vu2020 header --> 
        <div id="ds-header-wrapper">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
                          <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                          <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/"><img src="/themes/vu2020/images/logo-vandy-discoverarchive-height60.jpg" alt="VUIR Logo" /></a> 
                        <!-- <a id="ds-header-logo-link">
                            <xsl:attribute name="href">
                                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                                <xsl:text>/</xsl:text>
                            </xsl:attribute>
                        <span id="ds-header-logo">&#160;</span>
                        <span id="ds-header-logo-text"><i18n:text>xmlui.dri2xhtml.structural.head-subtitle</i18n:text></span>
                        </a>  --> 

                    </div> 
                    <div id="navbar3" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="/page/about">About</a></li>
                            <li>  <!-- log in or log out --> 
                                <xsl:choose>
                                    <xsl:when test="/dri:document/dri:meta/dri:userMeta/@authenticated = 'yes'">
                                        <a>
                                            <xsl:attribute name="href">
                                            <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/                                      dri:metadata[@element='identifier' and @qualifier='url']"/>
                                            </xsl:attribute>
                                            <i18n:text>xmlui.dri2xhtml.structural.profile</i18n:text>
                                            <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/                                   dri:metadata[@element='identifier' and @qualifier='firstName']"/>
                                            <xsl:text> </xsl:text>
                                            <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/                                            dri:metadata[@element='identifier' and @qualifier='lastName']"/>
                                        </a>
                                        <xsl:text> | </xsl:text>
                                        <a>
                                            <xsl:attribute name="href">
                                            <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/                                        dri:metadata[@element='identifier' and @qualifier='logoutURL']"/>
                                            </xsl:attribute>
                                            <i18n:text>xmlui.dri2xhtml.structural.logout</i18n:text>
                                        </a>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <a>
                                            <xsl:attribute name="href">
                                            <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/                                       dri:metadata[@element='identifier' and @qualifier='loginURL']"/>
                                            </xsl:attribute>
                                            <i18n:text>xmlui.dri2xhtml.structural.login</i18n:text>
                                        </a>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </li>
                        </ul>
                    </div>
                </div>   <!--/.container-fluid -->
            </nav>
        </div>
    </xsl:template>    

    <!-- The header (distinct from the HTML head element) contains the title, subtitle, login box and various
        placeholders for header images -->
    <xsl:template name="buildTrail">
        <div id="ds-trail-wrapper">
            <ul id="ds-trail">
                <xsl:choose>
                    <xsl:when test="starts-with($request-uri, 'page/about')">
                        <li class="ds-trail-link first-link ">
                            <a href="/">Institutional Repository Home</a>
                        </li>
                        <li xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns="http://di.tamu.edu/DRI/1.0/" class="ds-trail-arrow">→</li>
                        <li><xsl:text>About This Repository</xsl:text></li>
                    </xsl:when>
                    <xsl:when test="starts-with($request-uri, 'page/categories')">
                        <li class="ds-trail-link first-link ">
                            <a href="/">Institutional Repository Home</a>
                        </li>
                        <li xmlns:i18n="http://apache.org/cocoon/i18n/2.1" xmlns="http://di.tamu.edu/DRI/1.0/" class="ds-trail-arrow">→</li>
                        <li><xsl:text>Communities &amp; Collections</xsl:text></li>
                    </xsl:when>
                    <xsl:when test="count(/dri:document/dri:meta/dri:pageMeta/dri:trail) = 0">
                        <li class="ds-trail-link first-link">-</li>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="/dri:document/dri:meta/dri:pageMeta/dri:trail"/>
                    </xsl:otherwise>
                </xsl:choose>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="dri:trail">
        <!--put an arrow between the parts of the trail-->
        <xsl:if test="position()>1">
            <li class="ds-trail-arrow">
                <xsl:text>&#8594;</xsl:text>
            </li>
        </xsl:if>
        <li>
            <xsl:attribute name="class">
                <xsl:text>ds-trail-link </xsl:text>
                <xsl:if test="position()=1">
                    <xsl:text>first-link </xsl:text>
                </xsl:if>
                <xsl:if test="position()=last()">
                    <xsl:text>last-link</xsl:text>
                </xsl:if>
            </xsl:attribute>
            <!-- Determine whether we are dealing with a link or plain text trail link -->
            <xsl:choose>
                <xsl:when test="./@target">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="./@target"/>
                        </xsl:attribute>
                        <xsl:apply-templates />
                    </a>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </li>
    </xsl:template>

    <xsl:template name="cc-license">
        <xsl:param name="metadataURL"/>
        <xsl:variable name="externalMetadataURL">
            <xsl:text>cocoon:/</xsl:text>
            <xsl:value-of select="$metadataURL"/>
            <xsl:text>?sections=dmdSec,fileSec&amp;fileGrpTypes=THUMBNAIL</xsl:text>
        </xsl:variable>

        <xsl:variable name="ccLicenseName"
                      select="document($externalMetadataURL)//dim:field[@element='rights']"
                      />
        <xsl:variable name="ccLicenseUri"
                      select="document($externalMetadataURL)//dim:field[@element='rights'][@qualifier='uri']"
                      />
        <xsl:variable name="handleUri">
                    <xsl:for-each select="document($externalMetadataURL)//dim:field[@element='identifier' and @qualifier='uri']">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:copy-of select="./node()"/>
                            </xsl:attribute>
                            <xsl:copy-of select="./node()"/>
                        </a>
                        <xsl:if test="count(following-sibling::dim:field[@element='identifier' and @qualifier='uri']) != 0">
                            <xsl:text>, </xsl:text>
                        </xsl:if>
                </xsl:for-each>
        </xsl:variable>

   <xsl:if test="$ccLicenseName and $ccLicenseUri and contains($ccLicenseUri, 'creativecommons')">
        <div about="{$handleUri}" class="clearfix">
            <xsl:attribute name="style">
                <xsl:text>margin:0em 2em 0em 2em; padding-bottom:0em;</xsl:text>
            </xsl:attribute>
            <a rel="license"
                href="{$ccLicenseUri}"
                alt="{$ccLicenseName}"
                title="{$ccLicenseName}"
                >
                <xsl:call-template name="cc-logo">
                    <xsl:with-param name="ccLicenseName" select="$ccLicenseName"/>
                    <xsl:with-param name="ccLicenseUri" select="$ccLicenseUri"/>
                </xsl:call-template>
            </a>
            <span>
                <xsl:attribute name="style">
                    <xsl:text>vertical-align:middle; text-indent:0 !important;</xsl:text>
                </xsl:attribute>
                <i18n:text>xmlui.dri2xhtml.METS-1.0.cc-license-text</i18n:text>
                <xsl:value-of select="$ccLicenseName"/>
            </span>
        </div>
        </xsl:if>
    </xsl:template>

    <xsl:template name="cc-logo">
        <xsl:param name="ccLicenseName"/>
        <xsl:param name="ccLicenseUri"/>
        <xsl:variable name="ccLogo">
             <xsl:choose>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by/')">
                       <xsl:value-of select="'cc-by.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-sa/')">
                       <xsl:value-of select="'cc-by-sa.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nd/')">
                       <xsl:value-of select="'cc-by-nd.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nc/')">
                       <xsl:value-of select="'cc-by-nc.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nc-sa/')">
                       <xsl:value-of select="'cc-by-nc-sa.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/licenses/by-nc-nd/')">
                       <xsl:value-of select="'cc-by-nc-nd.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/publicdomain/zero/')">
                       <xsl:value-of select="'cc-zero.png'" />
                  </xsl:when>
                  <xsl:when test="starts-with($ccLicenseUri,
                                           'http://creativecommons.org/publicdomain/mark/')">
                       <xsl:value-of select="'cc-mark.png'" />
                  </xsl:when>
                  <xsl:otherwise>
                       <xsl:value-of select="'cc-generic.png'" />
                  </xsl:otherwise>
             </xsl:choose>
        </xsl:variable>
        <xsl:variable name="ccLogoImgSrc">
            <xsl:value-of select="$theme-path"/>
            <xsl:text>/images/creativecommons/</xsl:text>
            <xsl:value-of select="$ccLogo"/>
        </xsl:variable>
        <img>
             <xsl:attribute name="src">
                <xsl:value-of select="$ccLogoImgSrc"/>
             </xsl:attribute>
             <xsl:attribute name="alt">
                 <xsl:value-of select="$ccLicenseName"/>
             </xsl:attribute>
             <xsl:attribute name="style">
                 <xsl:text>float:left; margin:0em 1em 0em 0em; border:none;</xsl:text>
             </xsl:attribute>
        </img>
    </xsl:template>

    <!-- Like the header, the footer contains various miscellaneous text, links, and image placeholders -->
    <xsl:template name="buildFooter-deliv">
        <div id="ds-footer-wrapper">
            <div id="ds-footer">
                <div id="ds-footer-left">
                    <a href="http://www.dspace.org/" target="_blank">DSpace software</a> copyright&#160;&#169;&#160;2002-2016&#160; <a href="http://www.duraspace.org/" target="_blank">DuraSpace</a>
                </div>
                <div id="ds-footer-right">
                    <span class="theme-by">Theme by&#160;</span>
                    <a title="Atmire NV" target="_blank" href="http://atmire.com" id="ds-footer-logo-link">
                    <span id="ds-footer-logo">&#160;</span>
                    </a>
                </div>
                <div id="ds-footer-links">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of
                                    select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                            <xsl:text>/contact</xsl:text>
                        </xsl:attribute>
                        <i18n:text>xmlui.dri2xhtml.structural.contact-link</i18n:text>
                    </a>
                    <xsl:text> | </xsl:text>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of
                                    select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                            <xsl:text>/feedback</xsl:text>
                        </xsl:attribute>
                        <i18n:text>xmlui.dri2xhtml.structural.feedback-link</i18n:text>
                    </a>
                </div>
                <!--Invisible link to HTML sitemap (for search engines) -->
                <a class="hidden">
                    <xsl:attribute name="href">
                        <xsl:value-of
                                select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/htmlmap</xsl:text>
                    </xsl:attribute>
                    <xsl:text>&#160;</xsl:text>
                </a>
            </div>
        </div>
    </xsl:template>

    <!-- customized VU2020 footer -->
    <xsl:template name="buildFooter">

    <footer id="vu-footer" class="vu-footer fresh">
       <footer id="vu-social" class="vu-social">
            <div class="container">
                <div class="row">
                  <section class="vu-footer__social text-center center-block">
                    <h4 class="vu-footer__title"><a href="//social.vanderbilt.edu">Connect with Vanderbilt Libraries</a></h4>
                    <ul class="social-icons h2">
                      <li class="facebook">
                        <a href="//www.facebook.com/vandylibraries" target="_blank" rel="noopener">
                            <xsl:text  disable-output-escaping="yes">&lt;i title="follow us on facebook" class="fab fa-facebook-f fa-fw" &gt;&lt;/i&gt;</xsl:text>
                        </a>    
                      </li>
                      <li class="twitter">
                        <a href="//twitter.com/vandylibraries" target="_blank" rel="noopener">
                          <xsl:text disable-output-escaping="yes">&lt;i title="follow us on twitter" class="fab fa-twitter fa-fw" &gt;&lt;/i&gt;</xsl:text>
                        </a>
                      </li>
                      <li class="instagram">
                        <a href="//www.instagram.com/vandylibraries/" target="_blank" rel="noopener">
                          <xsl:text disable-output-escaping="yes">&lt;i title="follow us on instagram" class="fab fa-instagram fa-fw" &gt;&lt;/i&gt;</xsl:text>
                        </a>
                      </li>
                      <li class="youtube">
                        <a href="//www.youtube.com/playlist?list=PLB1EPeYUwa4n_I0CyMrQidztwO-SdENRm" target="_blank" rel="noopener">
                          <xsl:text disable-output-escaping="yes">&lt;i title="watch our youtube videos" class="fab fa-youtube fa-fw"&gt;&lt;/i&gt;</xsl:text>
                        </a>
                      </li>
                      <li class="flickr">
                        <a href="//www.flickr.com/photos/vulibrary/" target="_blank" rel="noopener">
                          <xsl:text disable-output-escaping="yes">&lt;i title="view our photo album" class="fab fa-flickr fa-fw"&gt;&lt;/i&gt;</xsl:text>
                        </a>
                      </li>
                      <li class="rss">
                        <a href="//newsonline.library.vanderbilt.edu/?feed=rss2" target="_blank" rel="noopener">
                          <xsl:text disable-output-escaping="yes">&lt;i title="subscribe to our news rss feed" class="fas fa-rss fa-fw"&gt;&lt;/i&gt;</xsl:text>
                        </a>
                      </li>
                      <li class="linkedin">
                        <a href="//www.linkedin.com/company/jean-and-alexander-heard-libraries" target="_blank" rel="noopener">
                          <xsl:text disable-output-escaping="yes">&lt;i title="follow us on linkedin" class="fab fa-linkedin-in fa-fw"&gt;&lt;/i&gt;</xsl:text>
                        </a>
                      </li> 
                    </ul>
                  </section>
                </div>
            </div>
        </footer> 
        <div class="container">
          <div class="row">
            <section class="vu-footer__yourvu col-sm-3 clearfix">
              <h4 class="vu-footer__title">Your Vanderbilt</h4>
              <ul>
                <li><a href="//www.vanderbilt.edu/alumni/">Alumni</a></li>
                <li><a href="//www.vanderbilt.edu/student/">Current Students</a></li>
                <li><a href="//www.vanderbilt.edu/faculty-staff/">Faculty &amp; Staff</a></li>
                <li><a href="//www.vanderbilt.edu/isss/">International Students</a></li>
                <li><a href="//news.vanderbilt.edu/for-media/">Media</a></li>
                <li><a href="//www.vanderbilt.edu/families/">Parents &amp; Family</a></li>
                <li><a href="//www.vanderbilt.edu/prospective/">Prospective Students</a></li>
                <li><a href="//www.vanderbilt.edu/academics/research/">Researchers</a></li>
                <li><a href="//www.vucommodores.com">Sports Fans</a></li>
                <li><a href="//www.vanderbilt.edu/community/">Visitors &amp; Neighbors</a></li>
              </ul>
            </section>
            <section class="vu-footer__map col-sm-6 clearfix">
              <div class="embed-responsive embed-responsive-16by9">
                <h4 class="vu-footer__title">Support the Jean and Alexander Heard Libraries</h4>
                <div class="row">
                  <div class="col-xs-3 col-sm-4 col-lg-3">
                    <a href="//webapp.mis.vanderbilt.edu/olga/pub/landing?appealCode=Q13A8" class="give-now">
                        <img src="//www.library.vanderbilt.edu/images/giveNow-ccc.png" alt="Support the Library...Give Now" title="Support the Library...Give Now" />
                    </a> 
                  </div>
                  <p class="col-xs-12 col-sm-8 col-lg-9">Gifts to the Libraries support the learning and research needs of the entire Vanderbilt community. <a href="//www.library.vanderbilt.edu/giving/">Learn more about giving to the Libraries.</a>
                  </p>
                </div>
                <div class="friend">
                  <a href="//www.library.vanderbilt.edu/friends/" class="btn btn-primary">
                    <xsl:text disable-output-escaping="yes">Become a Friend of the Libraries &lt;i class="fas fa-arrow-alt-circle-right"&gt; &lt;/i&gt; </xsl:text>
                  </a>
                </div>
              </div>
            </section>
            <section class="vu-footer__popular col-sm-3 clearfix">
              <h4 class="vu-footer__title">Quick Links</h4>
              <ul>
                <li><a href="//www.library.vanderbilt.edu/hours.php">Hours</a></li>
                <li><a href="//www.library.vanderbilt.edu/about">About</a></li>
                <li><a href="//www.library.vanderbilt.edu/about/employment.php">Employment</a></li>
                <li><a href="//www.library.vanderbilt.edu/staff">Staff Directory</a></li>
                <li><a href="//www.library.vanderbilt.edu/about/accessibility.php">Accessibility Services</a></li>
                <li><a href="//www.library.vanderbilt.edu/about/contact.php">Contact</a></li>
                <li><a href="//www.vanderbilt.edu">Vanderbilt Home</a></li>
                <li><a href="//www.library.vanderbilt.edu/privacypolicy.php">Privacy Policy</a></li>
                <!--<li><a href="#">Site Index</a></li>-->
              </ul>
            </section>
          </div>
        </div>
    </footer>
    <footer class="credits">
        <div class="container">
            <div class="col-lg-12 text-center">
                <p id="library-address">
                    <a href="//www.library.vanderbilt.edu">Jean and Alexander Heard Libraries</a> · 419 21st Avenue South · Nashville, TN 37203 · <a href="//www.library.vanderbilt.edu/about/contact.php">Phone</a>
                    <img src="//www.library.vanderbilt.edu/images/USA_Federal_depository_library_logo.svg.png" title="Vanderbilt is a US Federal Depository Library" alt="Vanderbilt is a US Federal Depository Library" class="depository-logo" />
                </p>         
                <p><small>© Vanderbilt University · All rights reserved. <a href="//web.vanderbilt.edu/">Site Development: Digital Strategy and Development (Division of Communications)</a>
                <br/>Vanderbilt University is committed to principles of equal opportunity and affirmative action. <a class="credits__link" href="//www.vanderbilt.edu/accessibility/">Accessibility information</a>. <br/>Vanderbilt®, Vanderbilt University®, V Oak Leaf Design®, Star V Design® and Anchor Down® are trademarks of The Vanderbilt University</small>
                </p>
            </div>
        </div>
    </footer>
</xsl:template> 


<!--
        The meta, body, options elements; the three top-level elements in the schema
-->




    <!--
        The template to handle the dri:body element. It simply creates the ds-body div and applies
        templates of the body's child elements (which consists entirely of dri:div tags).
    -->
    <xsl:template match="dri:body">
        <div id="ds-body">
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']">
                <div id="ds-system-wide-alert">
                    <p>
                        <xsl:copy-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']/node()"/>
                    </p>
                </div>
            </xsl:if>

            <!-- Check for the custom pages -->
            <xsl:choose>
                <xsl:when test="starts-with($request-uri, 'page/about')">
                <!-- adding about contents --> 
                  <xsl:call-template name="page_about"  />  
                </xsl:when>
                <xsl:when test="starts-with($request-uri, 'page/categories')">
                <!-- adding about contents --> 
                  <xsl:call-template name="page_categories"  />  
                </xsl:when>
                <!-- Otherwise use default handling of body -->
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>

        </div>
    </xsl:template>

    <!-- Currently the dri:meta element is not parsed directly. Instead, parts of it are referenced from inside
        other elements (like reference). The blank template below ends the execution of the meta branch -->
    <xsl:template match="dri:meta">
    </xsl:template>

    <!-- Meta's children: userMeta, pageMeta, objectMeta and repositoryMeta may or may not have templates of
        their own. This depends on the meta template implementation, which currently does not go this deep.
    <xsl:template match="dri:userMeta" />
    <xsl:template match="dri:pageMeta" />
    <xsl:template match="dri:objectMeta" />
    <xsl:template match="dri:repositoryMeta" />
    -->

    <xsl:template name="addJavascript">
        <xsl:variable name="jqueryVersion">
            <xsl:text>1.11.2</xsl:text>
        </xsl:variable>


        <script type="text/javascript" src="{concat($scheme, 'ajax.googleapis.com/ajax/libs/jquery/', $jqueryVersion ,'/jquery.min.js')}">&#160;</script>

        <xsl:variable name="localJQuerySrc">
                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
            <xsl:text>/static/js/jquery-</xsl:text>
            <xsl:value-of select="$jqueryVersion"/>
            <xsl:text>.min.js</xsl:text>
        </xsl:variable>

        <!-- adding bootstrap javascript -->
        <script type="text/javascript">
            <xsl:attribute name="src">
                <xsl:text>//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js</xsl:text>
            </xsl:attribute>&#160;
        </script>        

        <script type="text/javascript">
            <xsl:text disable-output-escaping="yes">!window.jQuery &amp;&amp; document.write('&lt;script type="text/javascript" src="</xsl:text><xsl:value-of
                select="$localJQuerySrc"/><xsl:text disable-output-escaping="yes">"&gt;&#160;&lt;\/script&gt;')</xsl:text>
        </script>

        <script type="text/javascript">
            <xsl:text>
                         if(typeof window.publication === 'undefined'){
                            window.publication={};
                          };
                        window.publication.contextPath= '</xsl:text><xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/><xsl:text>';</xsl:text>
            <xsl:text>window.publication.themePath= '</xsl:text><xsl:value-of select="$theme-path"/><xsl:text>';</xsl:text>
        </script>
        <script>
            <xsl:text>if(!window.DSpace){window.DSpace={};}window.DSpace.context_path='</xsl:text>
            <xsl:value-of select="$context-path"/>
            <xsl:text>';window.DSpace.theme_path='</xsl:text>
            <xsl:value-of select="$theme-path"/>
            <xsl:text>/';</xsl:text>
        </script>


        <!-- Add theme javascript  -->
        <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='javascript'][@qualifier='url']">
            <script type="text/javascript">
                <xsl:attribute name="src">
                    <xsl:value-of select="."/>
                </xsl:attribute>&#160;</script>
        </xsl:for-each>

        <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='javascript'][not(@qualifier)]">
            <script type="text/javascript">
                <xsl:attribute name="src">
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                    <xsl:text>/themes/</xsl:text>
                    <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="."/>
                </xsl:attribute>&#160;</script>
        </xsl:for-each>

        <!-- add "shared" javascript from static, path is relative to webapp root -->
        <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='javascript'][@qualifier='static']">
            <!--This is a dirty way of keeping the scriptaculous stuff from choice-support
            out of our theme without modifying the administrative and submission sitemaps.
            This is obviously not ideal, but adding those scripts in those sitemaps is far
            from ideal as well-->
            <xsl:choose>
                <xsl:when test="text() = 'static/js/choice-support.js'">
                    <script type="text/javascript">
                        <xsl:attribute name="src">
                            <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                            <xsl:text>/themes/</xsl:text>
                            <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                            <xsl:text>/lib/js/choice-support.js</xsl:text>
                        </xsl:attribute>&#160;</script>
                </xsl:when>
                <xsl:when test="not(starts-with(text(), 'static/js/scriptaculous'))">
                    <script type="text/javascript">
                        <xsl:attribute name="src">
                            <xsl:value-of
                                    select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                            <xsl:text>/</xsl:text>
                            <xsl:value-of select="."/>
                        </xsl:attribute>&#160;</script>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>

        <!-- add setup JS code if this is a choices lookup page -->
        <xsl:if test="dri:body/dri:div[@n='lookup']">
          <xsl:call-template name="choiceLookupPopUpSetup"/>
        </xsl:if>

        <!--PNG Fix for IE6-->
        <xsl:text disable-output-escaping="yes">&lt;!--[if lt IE 7 ]&gt;</xsl:text>
        <script type="text/javascript">
            <xsl:attribute name="src">
                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                <xsl:text>/themes/</xsl:text>
                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                <xsl:text>/lib/js/DD_belatedPNG_0.0.8a.js?v=1</xsl:text>
            </xsl:attribute>&#160;</script>
        <script type="text/javascript">
            <xsl:text>DD_belatedPNG.fix('#ds-header-logo');DD_belatedPNG.fix('#ds-footer-logo');$.each($('img[src$=png]'), function() {DD_belatedPNG.fixPng(this);});</xsl:text>
        </script>
        <xsl:text disable-output-escaping="yes" >&lt;![endif]--&gt;</xsl:text>


        <script type="text/javascript">
            runAfterJSImports.execute();
        </script>

        <!-- Add Nivo Slider jquery --> 
        <script type="text/javascript"            >
            <xsl:attribute name="src">
                <xsl:text>/themes/vu2020/lib/js/jquery.nivo.slider.js</xsl:text>
            </xsl:attribute>&#160;
        </script>   
        <script type="text/javascript">
            <xsl:attribute name="src">
                <xsl:text>/themes/vu2020/lib/js/nivo-start.js</xsl:text>
            </xsl:attribute>&#160;
        </script>  

        <xsl:call-template name="addJavascript-google-analytics" />

        <!-- Add a contextpath to a JS variable -->
        <script type="text/javascript"><xsl:text>
            if(typeof window.orcid === 'undefined'){
                window.orcid={};
            };
            window.orcid.contextPath= '</xsl:text><xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/><xsl:text>';</xsl:text>
            <xsl:text>window.orcid.themePath= '</xsl:text><xsl:value-of select="$theme-path"/><xsl:text>';</xsl:text>
        </script>

    </xsl:template>

    <xsl:template name="addJavascript-google-analytics">
        <!-- Add a google analytics script if the key is present -->
        <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='google'][@qualifier='analytics']">
            <script><xsl:text>
                (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

                ga('create', '</xsl:text><xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='google'][@qualifier='analytics']"/><xsl:text>', '</xsl:text><xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='serverName']"/><xsl:text>');
                ga('send', 'pageview');
            </xsl:text></script>
        </xsl:if>
    </xsl:template>

    <!-- Display language selection if more than 1 language is supported (overides buggy dir2xhtml-alt). 
    Uses a page metadata curRequestURI which was introduced by in /xmlui/src/main/webapp/themes/Mirage/sitemap.xmap-->
    <xsl:template name="languageSelection">
        <xsl:variable name="curRequestURI">
            <xsl:value-of select="substring-after(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='curRequestURI'],/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI'])"/>
        </xsl:variable>
        <xsl:if test="count(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='page'][@qualifier='supportedLocale']) &gt; 1">
            <div id="ds-language-selection">
                <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='page'][@qualifier='supportedLocale']">
                    <xsl:variable name="locale" select="."/>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="$curRequestURI"/>
                            <xsl:call-template name="getLanguageURL"/>
                            <xsl:value-of select="$locale"/>
                        </xsl:attribute>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='supportedLocale'][@qualifier=$locale]"/>
                    </a>
                </xsl:for-each>
            </div>
        </xsl:if>
    </xsl:template>
    <!-- Builds the Query String part of the language URL. If there allready is an excisting query string 
    like: ?filtertype=subject&filter_relational_operator=equals&filter=keyword1 it appends the locale parameter with the ampersand (&) symbol -->
    <xsl:template name="getLanguageURL">
        <xsl:variable name="queryString" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='queryString']"/>
        <xsl:choose>
            <!-- There allready is a query string so append it and the language argument -->
            <xsl:when test="$queryString != ''">
                <xsl:text>?</xsl:text>
                <xsl:choose>
                    <xsl:when test="contains($queryString, '&amp;locale-attribute')">
                        <xsl:value-of select="substring-before($queryString, '&amp;locale-attribute')"/>
                        <xsl:text>&amp;locale-attribute=</xsl:text>
                    </xsl:when>
                    <!-- the query string is only the locale-attribute so remove it to append the correct one -->
                    <xsl:when test="starts-with($queryString, 'locale-attribute')">
                        <xsl:text>locale-attribute=</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$queryString"/>
                        <xsl:text>&amp;locale-attribute=</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>?locale-attribute=</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



</xsl:stylesheet>
