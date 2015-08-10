baselines
baseline: spec 
	 <baseline>
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: [
			spec repository: 'http://mc.stfx.eu/Neo'. ].
		
		spec project: 'XMLParser' with: [
			spec
				className: 'ConfigurationOfXMLParser'; 
				file: 'ConfigurationOfXMLParser'; 
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main'. ].
		spec 
			package: 'Twilio-REST-Core'.
	].