<!--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

-->
<!--
    Rendering of a list of items (e.g. in a search or
    browse results page)

    Author: art.lowel at atmire.com
    Author: lieven.droogmans at atmire.com
    Author: ben at atmire.com
    Author: Alexey Maslov

-->

<xsl:stylesheet
    xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
    xmlns:dri="http://di.tamu.edu/DRI/1.0/"
    xmlns:mets="http://www.loc.gov/METS/"
    xmlns:dim="http://www.dspace.org/xmlns/dspace/dim"
    xmlns:xlink="http://www.w3.org/TR/xlink/"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:atom="http://www.w3.org/2005/Atom"
    xmlns:ore="http://www.openarchives.org/ore/terms/"
    xmlns:oreatom="http://www.openarchives.org/ore/atom/"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xalan="http://xml.apache.org/xalan"
    xmlns:encoder="xalan://java.net.URLEncoder"
    xmlns:util="org.dspace.app.xmlui.utils.XSLUtils"
    xmlns:confman="org.dspace.core.ConfigurationManager"
    exclude-result-prefixes="xalan encoder i18n dri mets dim xlink xsl util confman">

    <xsl:output indent="yes"/>

    <!--these templates are modfied to support the 2 different item list views that
    can be configured with the property 'xmlui.theme.mirage.item-list.emphasis' in dspace.cfg-->

    <xsl:template name="itemSummaryList-DIM">
        <xsl:variable name="itemWithdrawn" select="./mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='DIM']/mets:xmlData/dim:dim/@withdrawn" />

        <xsl:variable name="href">
            <xsl:choose>
                <xsl:when test="$itemWithdrawn">
                    <xsl:value-of select="@OBJEDIT"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="@OBJID"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:variable name="emphasis" select="confman:getProperty('xmlui.theme.mirage.item-list.emphasis')"/>
        <xsl:choose>
            <xsl:when test="'file' = $emphasis">
                <div class="item-wrapper clearfix">
                    <xsl:apply-templates select="./mets:fileSec" mode="artifact-preview">                  
                        <xsl:with-param name="href" select="$href"/>
                    </xsl:apply-templates>
                    <xsl:apply-templates select="./mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='DIM']/mets:xmlData/dim:dim" mode="itemSummaryList-DIM-file">
                        <xsl:with-param name="href" select="$href"/>
                    </xsl:apply-templates>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates select="./mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='DIM']/mets:xmlData/dim:dim"
                                     mode="itemSummaryList-DIM-metadata">
                    <xsl:with-param name="href" select="$href"/>
                </xsl:apply-templates>
            </xsl:otherwise>  
        </xsl:choose> 
    </xsl:template>

    <!--handles the rendering of a single item in a list in file mode-->
    <xsl:template match="dim:dim" mode="itemSummaryList-DIM-file">
        <xsl:param name="href"/>
        <xsl:variable name="metadataWidth" select="675 - $thumbnail.maxwidth - 30"/>
        <div class="item-metadata" style="width: {$metadataWidth}px;">
            <span class="bold"><i18n:text>xmlui.dri2xhtml.pioneer.title</i18n:text><xsl:text>:</xsl:text></span>
            <span class="content" style="width: {$metadataWidth - 110}px;">
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:value-of select="$href"/>
                    </xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="dim:field[@element='title' and descendant::text()]">
                            <xsl:value-of select="dim:field[@element='title'][1]/node()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:element>
            </span>
            <span class="Z3988">
                <xsl:attribute name="title">
                    <xsl:call-template name="renderCOinS"/>
                </xsl:attribute>
                &#xFEFF; <!-- non-breaking space to force separating the end tag -->
            </span>
            <span class="bold"><i18n:text>xmlui.dri2xhtml.pioneer.author</i18n:text><xsl:text>:</xsl:text></span>
            <span class="content" style="width: {$metadataWidth - 110}px;">
                <xsl:choose>
                    <xsl:when test="dim:field[@element='contributor'][@qualifier='author']">
                        <xsl:for-each select="dim:field[@element='contributor'][@qualifier='author']">
                            <span>
                                <xsl:if test="@authority">
                                    <xsl:attribute name="class">
                                        <xsl:text>ds-dc_contributor_author-authority</xsl:text>
                                    </xsl:attribute>
                                </xsl:if>
                                <xsl:copy-of select="node()"/>
                            </span>
                            <xsl:if test="count(following-sibling::dim:field[@element='contributor'][@qualifier='author']) != 0">
                                <xsl:text>; </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="dim:field[@element='creator']">
                        <xsl:for-each select="dim:field[@element='creator']">
                            <xsl:copy-of select="node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='creator']) != 0">
                                <xsl:text>; </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:when test="dim:field[@element='contributor']">
                        <xsl:for-each select="dim:field[@element='contributor']">
                            <xsl:copy-of select="node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='contributor']) != 0">
                                <xsl:text>; </xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <i18n:text>xmlui.dri2xhtml.METS-1.0.no-author</i18n:text>
                    </xsl:otherwise>
                </xsl:choose>
            </span>
            <xsl:if test="dim:field[@element='date' and @qualifier='issued'] or dim:field[@element='publisher']">
                <span class="bold"><i18n:text>xmlui.dri2xhtml.pioneer.date</i18n:text><xsl:text>:</xsl:text></span>
                <span class="content" style="width: {$metadataWidth - 110}px;">
                    <xsl:value-of
                            select="substring(dim:field[@element='date' and @qualifier='issued']/node(),1,10)"/>
                </span>
            </xsl:if>
        </div>
    </xsl:template>

    <!--handles the rendering of a single item in a list in metadata mode-->
    <xsl:template match="dim:dim" mode="itemSummaryList-DIM-metadata">
        <xsl:param name="href"/>
        <div class="artifact-description">
            <div class="artifact-title">
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:value-of select="$href"/>
                    </xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="dim:field[@element='title' and descendant::text()]">
                            <xsl:value-of select="dim:field[@element='title'][1]/node()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:element>
                <span class="Z3988">
                    <xsl:attribute name="title">
                        <xsl:call-template name="renderCOinS"/>
                    </xsl:attribute>
                    &#xFEFF; <!-- non-breaking space to force separating the end tag -->
                </span>
            </div>
            <div class="artifact-info">
                <span class="author">
                    <xsl:choose>
                        <xsl:when test="dim:field[@element='contributor'][@qualifier='author']">
                            <xsl:for-each select="dim:field[@element='contributor'][@qualifier='author']">
                                <span>
                                  <xsl:if test="@authority">
                                    <xsl:attribute name="class"><xsl:text>ds-dc_contributor_author-authority</xsl:text></xsl:attribute>
                                  </xsl:if>
                                  <xsl:copy-of select="node()"/>
                                </span>
                                <xsl:if test="count(following-sibling::dim:field[@element='contributor'][@qualifier='author']) != 0">
                                    <xsl:text>; </xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:when test="dim:field[@element='creator']">
                            <xsl:for-each select="dim:field[@element='creator']">
                                <xsl:copy-of select="node()"/>
                                <xsl:if test="count(following-sibling::dim:field[@element='creator']) != 0">
                                    <xsl:text>; </xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:when test="dim:field[@element='contributor']">
                            <xsl:for-each select="dim:field[@element='contributor']">
                                <xsl:copy-of select="node()"/>
                                <xsl:if test="count(following-sibling::dim:field[@element='contributor']) != 0">
                                    <xsl:text>; </xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-author</i18n:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </span>
                <xsl:text> </xsl:text>
                <xsl:if test="dim:field[@element='date' and @qualifier='issued'] or dim:field[@element='publisher']">
	                <span class="publisher-date">
	                    <xsl:text>(</xsl:text>
	                    <xsl:if test="dim:field[@element='publisher']">
	                        <span class="publisher">
	                            <xsl:copy-of select="dim:field[@element='publisher']/node()"/>
	                        </span>
	                        <xsl:text>, </xsl:text>
	                    </xsl:if>
	                    <span class="date">
	                        <xsl:value-of select="substring(dim:field[@element='date' and @qualifier='issued']/node(),1,10)"/>
	                    </span>
	                    <xsl:text>)</xsl:text>
	                </span>
                </xsl:if>
            </div>
            <xsl:if test="dim:field[@element = 'description' and @qualifier='abstract']">
                <xsl:variable name="abstract" select="dim:field[@element = 'description' and @qualifier='abstract']/node()"/>
                <div class="artifact-abstract">
                    <xsl:value-of select="util:shortenString($abstract, 220, 10)"/>
                </div>
            </xsl:if>
        </div>
    </xsl:template>

    <xsl:template name="itemDetailList-DIM">
        <xsl:call-template name="itemSummaryList-DIM"/>
    </xsl:template>


    <xsl:template match="mets:fileSec" mode="artifact-preview">
        <xsl:param name="href"/>

        <div class="thumbnail-wrapper" style="width: {$thumbnail.maxwidth}px;"> 
            <div class="artifact-preview">
                <a class="image-link" href="{$href}">

                    <!-- display proper icon base on MIMETYPE and DC:type -->
                   <!-- <img alt="Icon" src="{concat($theme-path, '/images/mime.png')}" style="height: {$thumbnail.maxheight}px;"/>   -->

                    <xsl:call-template name="displayItemIcon" >
                        <xsl:with-param name="thumbnail_node" select="mets:fileGrp[@USE='THUMBNAIL']" />
                        <xsl:with-param name="mimetype" select="./mets:fileGrp[@USE='CONTENT']/mets:file[1]/@MIMETYPE" /> 
                        <xsl:with-param name="dctype" select="../mets:dmdSec/mets:mdWrap/mets:xmlData/dim:dim/dim:field[@element = 'format']" />
                    </xsl:call-template>      

                    <xsl:choose>
                        <xsl:when test="mets:fileGrp[@USE='THUMBNAIL']"> 
                            <!-- Checking if Thumbnail is restricted and if so, show a restricted image  -->
                            <xsl:variable name="src">
                              <xsl:value-of select="mets:fileGrp[@USE='THUMBNAIL']/mets:file/mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:variable>
                            <xsl:choose>
                              <xsl:when test="contains($src,'isAllowed=n')">
                                <div style="width: 100%; text-align: center">
                                    <img>
                                      <xsl:attribute name="src">
                                        <xsl:value-of select="$context-path"/>
                                        <xsl:text>/static/icons/lock24.png</xsl:text>
                                      </xsl:attribute>
                                      <xsl:attribute name="alt">xmlui.dri2xhtml.METS-1.0.blocked</xsl:attribute>
                                      <xsl:attribute name="attr" namespace="http://apache.org/cocoon/i18n/2.1">alt</xsl:attribute>
                                    </img>
                                </div>
                              </xsl:when>
                              <xsl:otherwise>
                                <img alt="Thumbnail">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="$src"/>
                                    </xsl:attribute>
                                </img>
                              </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
<!--                            <img alt="Icon" src="{concat($theme-path, '/images/mime.png')}" style="height: {$thumbnail.maxheight}px;"/>  -->

                    </xsl:otherwise>
                    </xsl:choose> 
                </a>
            </div>
        </div>  
    </xsl:template> 

    <!-- display proper icon for item base on MIMETYPE and DC:type -->
    <xsl:template name="displayItemIcon" >

        <xsl:param name="thumbnail_node" />
        <xsl:param name="mimetype" />
        <xsl:param name="dctype" />

        <xsl:variable name="knowntypes" 
            select="'pdf msword vnd.ms-powerpoint image audio video' " />
        
           
        <!--    MIMETYPE: <xsl:value-of select="$mimetype" />
            DCTYPE: <xsl:value-of select="$dctype" /> 
            THUMBNAIL: <xsl:value-of select="thumbnail_node" />  --> 
             

        <xsl:choose>
            <!-- When image Thumbnail is available xx -->     
            <!-- <xsl:when test="mets:fileGrp[@USE='THUMBNAIL']"> --> 

            <!-- When MIMETYPE is known, display icon based on MIMETYPE --> 
            <xsl:when test="($mimetype != '') and ( contains($knowntypes, substring-after($mimetype,'/')) or contains($knowntypes, substring-before($mimetype, '/')) )" >
                <xsl:call-template name="displayKnownItemtypeIcon">
                    <xsl:with-param name="icontype" select="$mimetype" />
                </xsl:call-template>
            </xsl:when>

            <!-- Display icon based on DC:type --> 
  <!--          <xsl:when test="($dctype != '') and (contains($knowntypes, substring-before($dctype,'/')) or contains($knowntypes,substring-after($dctype, '/')) ) " >
                <xsl:call-template name="displayKnownItemtypeIcon">
                    <xsl:with-param name="icontype" select="$dctype" />
                </xsl:call-template>
            </xsl:when>
-->
            <!-- display generic item icon --> 
            <xsl:otherwise>
                <xsl:call-template name="displayGenericIcon" />
            </xsl:otherwise>           
        </xsl:choose>
    </xsl:template>        


    <!-- display item icon based on input value -->
    <xsl:template name="displayKnownItemtypeIcon" >
        <xsl:param name="icontype" />
        <xsl:param name="currentfilesec" />

        <xsl:choose>
            <!-- PDF Mime Types -->      
            <xsl:when test="$icontype ='application/pdf'">
                <xsl:call-template name="displayPDFIcon" />
            </xsl:when>

            <!-- Microsoft Word Mime Types -->
            <xsl:when test="$icontype ='application/msword'">
                <xsl:call-template name="displayWordIcon" />     
            </xsl:when>
            
            <!-- Microsoft Powerpoint Mime Types -->
            <xsl:when test="$icontype ='application/vnd.ms-powerpoint'">
                <xsl:call-template name="displayPPTIcon" />     
            </xsl:when>

            <!-- Image Mime Types -->
            <!-- 'image/jpeg', $mimetype ='image/tiff' or $mimetype='image/png', 'application/postscript'  -->
            <xsl:when test="contains($icontype, 'image') or $icontype ='application/postscript' " >
                <xsl:call-template name="displayImageIcon" >
                    <xsl:with-param name="context" select="$currentfilesec" />    
                </xsl:call-template>     
            </xsl:when>

            <!-- Audio Mime Types -->
            <!-- <xsl:when test="$mimetype= 'audio/x-mpeg' or $mimetype= 'audio/acc, aacp' or $mimetype ='audio/x-wav' or $mimetype='audio/x-aiff, aacp' or $mimetype='audio/x-aiff' or $mimetype='audio/x-wma, aacp' or $mimetype='audio/x-wma' "> -->
            <xsl:when test="contains($icontype, 'audio')">
                <xsl:call-template name="displayAudioIcon" />     
            </xsl:when>
                
            <!-- Video Mime Types -->
            <xsl:when test="contains($icontype, 'video')">
                    <xsl:call-template name="displayVideoIcon" />     
            </xsl:when>
        </xsl:choose>    
    </xsl:template>   

    <xsl:template name="displayPDFIcon">
        <img alt="Icon" src="{concat($theme-path,'/images/pdf.png')}" style="height:{$thumbnail.maxheight}px;"/>
    </xsl:template>    
    <xsl:template name="displayWordIcon">
        <img alt="Icon" src="{concat($theme-path,'/images/DOCX.png')}" style="height:{$thumbnail.maxheight}px;"/>
    </xsl:template>   
    <xsl:template name="displayPPTIcon">
        <img alt="Icon" src="{concat($theme-path,'/images/PowerPoint.png')}" style="height:{$thumbnail.maxheight}px;"/> 
    </xsl:template>    
    <xsl:template name="displayAudioIcon">
        <img alt="Icon" src="{concat($theme-path,'/images/audio-basic.png')}"  style="height:{$thumbnail.maxheight}px;"/> 
    </xsl:template> 
    <xsl:template name="displayVideoIcon">
        <img alt="Icon" src="{concat($theme-path,'/images/video.png')}"  style="height:{$thumbnail.maxheight}px;"/> 
    </xsl:template> 
    <xsl:template name="displayGenericIcon">
<!--        <xsl:attribute name="data-src">
        <xsl:text>holder.js/100%x</xsl:text>
        <xsl:value-of select="$thumbnail.maxheight"/>
        <xsl:text>/text:No Thumbnail</xsl:text>
        </xsl:attribute>  -->
    </xsl:template>      
          
    <xsl:template name="displayImageIcon" match="mets.file">
        <img alt="Icon" src="{concat($theme-path,'/images/jpg.png')}"  style="height:{$thumbnail.maxheight}px;"/> 
    </xsl:template>  


</xsl:stylesheet>
