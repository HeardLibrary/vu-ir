<?xml version="1.0" encoding="UTF-8"?>
<!--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

-->

<!--
    TODO: Describe this XSL file
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
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="i18n dri mets xlink xsl dim xhtml mods dc">

    <!-- <xsl:import href="../dri2xhtml-alt/dri2xhtml.xsl"/> -->
    <xsl:import href="aspect/artifactbrowser/artifactbrowser.xsl"/>
    <xsl:import href="core/global-variables.xsl"/>
    <xsl:import href="core/elements.xsl"/>
    <xsl:import href="core/forms.xsl"/>
    <xsl:import href="core/page-structure.xsl"/>
    <xsl:import href="core/navigation.xsl"/>
    <xsl:import href="core/attribute-handlers.xsl"/>
    <xsl:import href="core/utils.xsl"/>
    <xsl:import href="aspect/general/choice-authority-control.xsl"/>
    <xsl:import href="aspect/general/vocabulary-support.xsl"/>
    <!--<xsl:import href="xsl/aspect/administrative/administrative.xsl"/>-->
    <xsl:import href="aspect/artifactbrowser/common.xsl"/>
    <xsl:import href="aspect/artifactbrowser/item-list.xsl"/>
    <xsl:import href="aspect/artifactbrowser/item-view.xsl"/>
    <xsl:import href="aspect/artifactbrowser/community-list.xsl"/>
    <xsl:import href="aspect/artifactbrowser/collection-list.xsl"/>
    <xsl:import href="aspect/artifactbrowser/browse.xsl"/>
    <xsl:import href="aspect/discovery/discovery.xsl"/>
    <xsl:import href="aspect/artifactbrowser/one-offs.xsl"/>
    <xsl:import href="aspect/submission/submission.xsl"/>

    <!-- add static pages --> 
    <xsl:import href="about.xsl" />
    <!-- <xsl:import href="404.xsl" /> -->
    <xsl:import href="categories.xsl" />
    
    <xsl:output indent="yes"/>

    <!-- Disables the browsing communities list on the front page only -->
    <xsl:template name="disable_frontpage_browse" match="dri:div[@id='aspect.artifactbrowser.CommunityBrowser.div.comunity-browser']">
        <xsl:if test="not(//dri:body/dri:div[@id='file.news.div.news'])">
            <xsl:apply-templates/>
        </xsl:if>
    </xsl:template> 
    
    <!-- Adds a slider to the front page -->
    <xsl:template name="add_frontpage_slider" match="dri:div[@id='file.news.div.news']">
        <!-- Adds custom language to the font page. Does the news feed need to be changed elsewhere? -->
        <h1>Welcome to DiscoverArchive!</h1>
        <br/>
        <p>DiscoverArchive, Vanderbilt University's digital repository, provides open access to faculty scholarly work, preserves historically significant digital materials, and supports the university in scholarly communications and the dissemination of knowledge. Faculty, researchers, staff and students are invited to contribute digital materials to ensure long term preservation and access. <a href="/page/about">Learn more....</a></p>
        
        <div class="slider-wrapper">
            <div id="slider" class="nivoSlider theme-default">
                <a href="/community-list"><img src="/themes/VU2/images/vanderbilt.jpg" alt=""  title="A community of scholars..." /></a>
                <a href="/handle/1803/3706"><img src="/themes/VU2/images/artssciences.jpg" alt=""  title="Open Access at the College of Arts &amp; Sciences" /></a>
                <a href="/handle/1803/5546"><img src="/themes/VU2/images/law.jpg" alt=""  title="Open Access at Vanderbilt Law School" /></a>
                <a href="/handle/1803/244"><img src="/themes/VU2/images/blair.jpg" alt=""  title="Open Access at the Blair School of Music" /></a>
                <a href="/handle/1803/5548"><img src="/themes/VU2/images/peabody.jpg" alt=""  title="Open Access at the Peabody College of Education and Human Development" /></a>
                <a href="/handle/1803/1269"><img src="/themes/VU2/images/divinity.jpg" alt=""  title="Open Access at Vanderbilt Divinity School" /></a>
                <a href="/handle/1803/5547"><img src="/themes/VU2/images/owen.jpg" alt=""  title="Open Access at the Owen Graduate School of Management" /></a>
                <a href="/handle/1803/610"><img src="/themes/VU2/images/library-rotation.jpg" alt="" title="...served by a community of librarians"/></a>
            </div>
        </div>
        <div>
            <br/>
            <a class="table_of_contents" target="_self" href="/page/categories">
                    View primary communities....            
            </a>    
            <br /><br />
        </div>
        <hr/>
    </xsl:template> 

    <!-- Adds explanatory text to login page -->
    <xsl:template name="sign-in-text" match="dri:div[@id='aspect.eperson.LDAPLogin.div.login']/dri:head">
        <h1>Sign In to DiscoverArchive</h1>
        <br/>
        <p>Please use your VUNetID and ePassword to sign in to DiscoverArchive.</p>
        <p>If you previously used a different ID and password to access DiscoverArchive, you will need to reauthenticate yourself with your VUNetID. Please <a href="mailto:discoverarchive@library.vanderbilt.edu">contact us</a> if you have questions or experience connectivity problems.</p>
        <hr/>
        <h1>Authenticate with your VUNetID</h1>
        <xsl:apply-templates select="dri:list"/>
    </xsl:template>

    <!--Add table of contents to Browse options -->
<!--     <xsl:template name="add_toc" match="dri:xref[@target='community-list'] | dri:xref[@target='/community-list']">
            <a href="/page/categories" class="list-group-item ds-option">Primary Communities</a>
            <a href="/community-list" class="list-group-item ds-option">All Communities</a>
    </xsl:template>  -->
    
    <!-- Overriding the main body template for static pages (about, 404, categories) -->
    <xsl:template match="dri:body">
        <div id="ds-body">
            <xsl:choose>
                <xsl:when test="starts-with($request-uri, 'page/about')">
                    <xsl:call-template name="page_about"/>
                </xsl:when>
                <xsl:when test="starts-with($request-uri, 'page/categories')">
                    <xsl:call-template name="page_categories"/>
                </xsl:when>
                <!-- <xsl:when test="self::node() = ''">
                    <p> Nothing found here ..</p>
                    <xsl:call-template name="page_404"/> 
                </xsl:when> -->
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>
        </div>
    </xsl:template>

    <!-- Removes the (redundant) search box on community pages -->
    <xsl:template name="disable_secondary_search-browse" match="dri:div[@id='aspect.artifactbrowser.CommunityViewer.div.community-search-browse']">
    </xsl:template>


</xsl:stylesheet>
