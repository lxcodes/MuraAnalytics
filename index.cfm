<cfinclude template="plugin/config.cfm" />
<cfsavecontent variable="body">
	<cfoutput>
		<style type="text/css">
			##bodyWrap h3{padding-top:1em;}
			##bodyWrap ul{padding:0 0.75em;margin:0 0.75em;}
		</style>
		<div id="bodyWrap">
			<h1>MuraAnalytics</h1>
			<p>The all-amazing wonderful multi-talented Google Analtyics plugin for Mura. </p>

			<h3>Tested With</h3>
			<ul>
				<li>Mura CMS Core Version <strong>6.1+</strong></li>
				<li>Railo <strong>4.1.2</strong></li>
			</ul>
		</div>
	</cfoutput>
</cfsavecontent>
<cfoutput>
	#application.pluginManager.renderAdminTemplate(body=body,pageTitle="MuraAnalytics")#
</cfoutput>

