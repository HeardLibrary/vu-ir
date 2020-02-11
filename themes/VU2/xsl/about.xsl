<?xml version="1.0" encoding="UTF-8"?>

<!--
    About: This is the "About" page for VUIR
    Created by: Clifford Anderson 

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
	
	<xsl:template name="page_about"	>
		<div>
			<h1>About the Vanderbilt University Institutional Repository</h1>

			<p>The University Institutional Repository (VUIR) is a digital repository providing open access to scholarly research at Vanderbilt University. Faculty, students and staff at Vanderbilt may contribute materials. This service, provided by the library, supports the university in the preservation and dissemination of research.bi</p>

			<p>Services provided by library specialists:</p>

			<ul>
				<li>Create communities and collections</li>
				<li>Train and facilitate community members to add materials</li>
				<li>Review and add additional descriptive information (metadata) to each record</li>
				<li>Provide depositing services</li>
				<li>Maintain open access and ensure preservation of materials</li>
				<li>Maintain the software and hardware required for continuous service</li>
				<li>Research copyright and seek permissions</li>
			</ul>

			<p>Contact the coordinator: <a href="mailto:vuir@list.vanderbilt.edu">vuir@list.vanderbilt.edu</a></p>

			<h2>Registration</h2>

			<p>Users can search, browse, and access items in Vanderbilt University Institutional Repository without logging in. However to access items restricted to the Vanderbilt community and to submit items to the repository, users must register. Click on &quot;Register&quot; to register your VUNET ID with the institutional repository.</p>

			<h2>Procedure for submitting</h2>

			<p>Permission must be obtained to submit material to a collection. Contact the <a href="mailto:vuir@list.vanderbilt.edu">repository coordinator</a> to request permissions to submit items to the repository. The coordinator will reply to you to approve your request, provide permission to submit to relevant collections, and supply any needed submission instructions.</p>

			<h2>Copyright</h2>

			<p>If you retain copyright to your work you can deposit it in Vanderbilt University Institutional Repository. By depositing your work in Vanderbilt University Institutional Repository you will significantly increase access while ensuring its preservation.</p>

			<ul>
				<li><p>SPARC Addendum: Retain copyright to your research by using the SPARC (Scholarly Publishing &amp; Academic Resources Coalition) <a href="http://www.arl.org/sparc/author/addendum.shtml">Author Addendum</a> to standard publishing agreements.</p></li>
				<li><p>Creative Commons: When making a deposit all users are given the option to assign a Creative Commons license allowing for increased redistribution while retaining certain rights. This option is available during each deposit and only applies to those who have or have retained copyright to their works. To learn more about the different type of licenses available go to the <a href="http://www.creativecommons.org">Creative Commons</a>.</p></li>
				<li><p>Self-Archiving: If you do not retain copyright or are unsure if copyright has, over time, reverted back to you, please contact the publisher. Many publishers post policies online concerning what is allowed to be published in digital repositories. This can be referred to as &quot;self-archiving&quot; policies. <a href="http://www.sherpa.ac.uk/">SHERPA</a> is a useful resource to check publisher policies and includes databases of publisher copyright and archiving policies (<a href="http://www.sherpa.ac.uk/romeo/">RoMEO</a>) and research funders archiving mandates and guidelines (<a href="http://www.sherpa.ac.uk/juliet/index.php">JULIET</a>).</p></li>
			</ul>

			<p>If you would like to publish in Vanderbilt University Institutional Repository and need help determining copyright please contact the institutional repository coordinator for assistance.</p>

			<h2>License</h2>

			<p>When depositing in Vanderbilt University Institutional Repository you will be prompted to agree to a <a href="/handle/1803/2820">non-exclusive distribution license</a> granting Vanderbilt University the right to reproduce, convert and/or distribute submissions.</p>

			<blockquote>
				<p>Note to those who want to contribute papers or digital content on behalf of others:
To contribute, or publish, digital content on behalf of another author, please obtain an agreement to the non-exclusive distribution license before submitting to Vanderbilt University Institutional Repository. This can be done by printing out the license for the author(s) to sign. An alternative is to email the wording of the license to the author and receive back an acknowledgement of agreement. In either case the agreement must be retained on file, in either digital or paper format, in the center or department.</p>
			</blockquote>
			<h2>Formats and Preservation</h2>

			<p>All digital formats are accepted in Vanderbilt University Institutional Repository. While Vanderbilt University Institutional Repository accepts all formats, there are three levels of preservation. </p>

			<ul>
				<li><p>&quot;Supported formats&quot; will be functionally preserved using either format migration or emulation techniques. Examples include Microsoft Word DOC and DOCX, HTML, Adobe PDF, JPEG, TIFF, RTX/RTF(rich text), SGML, XML, and AIFF.</p></li>
				<li><p>&quot;Known formats&quot; are not currently identified for migration or emulation, however, due to the wide use of these formats it is likely tools will emerge in the future to facilitate their functional preservation. Examples include WordPerfect, GIF(Graphics Interchange Format) and WAV(Audio for Windows). </p></li>
				<li><p>&quot;Unsupported formats&quot; are those not in wide use or come from little used software. Functional preservation for these formats is not foreseen.</p></li>
			</ul>
			
			<h2>Removing or Updating Materials</h2>

			<p>Vanderbilt University Institutional Repository is a permanent location for digital materials and each item is assigned a permanent URI. The author and copyright holder of digital content deposited in Vanderbilt University Institutional Repository can request that repository managers remove an item completely or replace it with an updated version. It is also possible to add the updated version along with the original item to serve as a record of research.</p>

			<h2>Questions?</h2>

			<p>Please contact the coordinator with any questions at <a href="mailto:vuir@list.vanderbilt.edu">vuir@list.vanderbilt.edu</a>. Thank you!</p>
		</div>
	</xsl:template>

</xsl:stylesheet>
