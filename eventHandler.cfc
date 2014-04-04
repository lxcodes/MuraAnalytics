component name='eventHandler' accessors='true' extends='mura.plugin.pluginGenericEventHandler' output='false' {

  property name='$';

  this.pluginName = 'MuraAnalytics';

  public any function onApplicationLoad(required struct $) {
    // Register all event handlers/listeners of this .cfc with Mura CMS
    variables.pluginConfig.addEventHandler(this);
  }

  public any function onRenderEnd(required struct $){
    var html = '';
    var google_gajs_tracking = variables.pluginConfig.getSetting('GoogleAnalyticsGATrackingID');
    var google_analyticsjs_tracking = variables.pluginConfig.getSetting('GoogleAnalyticsAJTrackingID');

    if(google_gajs_tracking != ''){
      savecontent variable='gajs' { include 'inc/gajs.cfm'; }
      html &= gajs;
    }

    if(google_analyticsjs_tracking != ''){
      savecontent variable='analyticsjs' { include 'inc/analyticsjs.cfm'; }
      html &= analyticsjs;
    }

    if(html != ''){
      var newContent = replaceNoCase($.event("__MuraResponse__"), "</body>", html & "</body>");
      $.event("__MuraResponse__", newContent);
    }
  }
}
