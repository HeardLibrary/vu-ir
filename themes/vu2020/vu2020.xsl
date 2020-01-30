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

    <xsl:import href="../dri2xhtml-alt/dri2xhtml.xsl"/>
    <xsl:import href="lib/xsl/core/global-variables.xsl"/>
    <xsl:import href="lib/xsl/core/page-structure.xsl"/>
    <xsl:import href="lib/xsl/core/navigation.xsl"/>
    <xsl:import href="lib/xsl/core/elements.xsl"/>
    <xsl:import href="lib/xsl/core/forms.xsl"/>
    <xsl:import href="lib/xsl/core/attribute-handlers.xsl"/>
    <xsl:import href="lib/xsl/core/utils.xsl"/>
    <xsl:import href="lib/xsl/aspect/general/choice-authority-control.xsl"/>
    <xsl:import href="lib/xsl/aspect/administrative/administrative.xsl"/>
    <xsl:import href="lib/xsl/aspect/artifactbrowser/item-list.xsl"/>
    <xsl:import href="lib/xsl/aspect/artifactbrowser/item-view.xsl"/>
    <xsl:import href="lib/xsl/aspect/artifactbrowser/community-list.xsl"/>
    <xsl:import href="lib/xsl/aspect/artifactbrowser/collection-list.xsl"/>
    <xsl:import href="lib/xsl/vu/about.xsl"/>
    <xsl:import href="lib/xsl/vu/categories.xsl"/> 
    <xsl:output indent="yes"/>
    
    
    <!-- Disables the browsing communities list on the front page only -->
    <xsl:template name="disable_frontpage_browse" match="dri:div[@id='aspect.artifactbrowser.CommunityBrowser.div.comunity-browser']">
        <xsl:if test="not(//dri:body/dri:div[@id='file.news.div.news'])">
            <xsl:apply-templates/>
        </xsl:if>
    </xsl:template>  

    <!-- Adds a slider to the front page -->
    <xsl:template name="add_frontpage_slider" match="dri:div[@id='file.news.div.news']">
        
        <h1>Welcome to the Vanderbilt University Institutional Repository!</h1>
        <br/>
        <p>The Vanderbilt University Institutional Repository (VUIR) provides open access to faculty scholarly work, preserves historically significant digital materials, and supports the university in scholarly communications and the dissemination of knowledge. Faculty, researchers, staff and students are invited to contribute digital materials to ensure long term preservation and access. <a href="/page/about">Learn more....</a></p>
        
        <div class="slider-wrapper">
            <div id="slider" class="nivoSlider theme-default">
                <a href="/community-list"><img src="/themes/vu2020/images/vanderbilt.jpg" alt=""  title="A community of scholars..." /></a>
                <a href="/handle/1803/3706"><img src="/themes/vu2020/images/artssciences.jpg" alt=""  title="Open Access at the College of Arts &amp; Sciences" /></a>
                <a href="/handle/1803/5546"><img src="/themes/vu2020/images/law.jpg" alt=""  title="Open Access at Vanderbilt Law School" /></a>
                <a href="/handle/1803/244"><img src="/themes/vu2020/images/blair.jpg" alt=""  title="Open Access at the Blair School of Music" /></a>
                <a href="/handle/1803/5548"><img src="/themes/vu2020/images/peabody.jpg" alt=""  title="Open Access at the Peabody College of Education and Human Development" /></a>
                <a href="/handle/1803/1269"><img src="/themes/vu2020/images/divinity.jpg" alt=""  title="Open Access at Vanderbilt Divinity School" /></a>
                <a href="/handle/1803/5547"><img src="/themes/vu2020/images/owen.jpg" alt=""  title="Open Access at the Owen Graduate School of Management" /></a>
                <a href="/handle/1803/610"><img src="/themes/vu2020/images/library-rotation.jpg" alt="" title="...served by a community of librarians"/></a>
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
        <h1>Sign In to Vanderbilt University Institutional Repository</h1>
        <br/>
        <p>Please use your VUNetID and ePassword to sign in to DiscoverArchive.</p>
        <p>If you previously used a different ID and password to access DiscoverArchive, you will need to reauthenticate yourself with your VUNetID. Please <a href="mailto:discoverarchive@library.vanderbilt.edu">contact us</a> if you have questions or experience connectivity problems.</p>
        <hr/>
        <h1>Authenticate with your VUNetID</h1>
        <xsl:apply-templates select="dri:list"/>
    </xsl:template>

</xsl:stylesheet>
