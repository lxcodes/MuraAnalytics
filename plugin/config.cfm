<cfscript>
if ( !IsDefined('$')) {
  $ = application.serviceFactory.getBean('muraScope').init('default');
}

if ( !IsDefined('pluginConfig') ) {
  pluginConfig = $.getPlugin('MuraAnalytics');
}
</cfscript>
