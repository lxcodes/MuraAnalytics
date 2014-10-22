<cfoutput>
	<plugin>
		<name>MuraAnalytics</name>
		<package>MuraAnalytics</package>
		<directoryFormat>packageOnly</directoryFormat>
		<loadPriority>5</loadPriority>
		<version>1.0.0</version>
		<provider>fh group</provider>
		<providerURL>http://www.fh-group.com</providerURL>
		<category>Utility</category>

    <mappings>
			<!--
			<mapping
				name="myMapping"
				directory="someDirectory/anotherDirectory" />
			-->
			<!--
				Mappings will automatically be bound to the directory
				your plugin is installed, so the above example would
				refer to: {context}/plugins/{packageName}/someDirectory/anotherDirectory/
			-->
      <mapping name="MuraAnalytics" directory="" />
		</mappings>

		<!--
				Plugin Settings :
				The settings contain individual settings that the plugin
				requires to function.
		-->
		<settings>
      <!--- <setting name="GoogleAnalyticsGATrackingID" label="Google Analtyics Tracking ID (ga.js)" type="TextBox" required="true" /> --->
      <!--- <setting name="GoogleAnalyticsAJTrackingID" label="Google Analytics Tracking ID (analytics.js)" type="TextBox" required="false" /> --->
      <!--- <setting name="GoogleAnalyticsJSExtras" label="Google Analytics Extras" hint="This can be any commands associated with 'ga()'" type="TextBox" required="false" /> --->
      <setting>
        <name>GoogleAnalyticsGATrackingID</name>
        <label>Google Analytics Tracking ID (ga.js)</label>
        <type>TextBox</type>
        <required>false</required>
      </setting>
      <setting>
        <name>GoogleAnalyticsAJTrackingID</name>
        <label>Google Analytics Tracking ID (analytics.js)</label>
        <type>TextBox</type>
        <required>false</required>
      </setting>
      <setting>
        <name>GoogleAnalyticsJSExtras</name>
        <label>Google Analytics Extras</label>
        <hint>This can be any commands associated with ga()</hint>
        <type>TextBox</type>
        <required>false</required>
      </setting>
		</settings>

		<eventHandlers>
			<eventHandler event="onApplicationLoad" component="eventHandler" persist="false" />
		</eventHandlers>

		<displayobjects location="global">
		</displayobjects>
	</plugin>
</cfoutput>
