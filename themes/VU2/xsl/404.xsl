<?xml version="1.0" encoding="UTF-8"?>

<!--
    About: This is the "404 Error Page" page for DSpace
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

	<xsl:template name="page_404">
		<div id="content-page">
			<div class="wrap">
				 <div class="content-primary">
					<h1 class="post-title">Hmmmm... we can't find that page.</h1>
					<br/>
					<h5>We're sorry! We did not find the page that you requested.</h5>
					<br/>
					<p>Click <a href="/">here</a> to return to DiscoverArchive or <a href="http://www.library.vanderbilt.edu">here</a> to return to the University Library website.</p>
				</div>
			</div>
		</div>
	</xsl:template>
	
</xsl:stylesheet>