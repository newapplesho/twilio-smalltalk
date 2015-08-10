baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'. 
		
		spec package: 'Neo-JSON-Core' with: [
			spec repository: 'http://mc.stfx.eu/Neo'. ].
		
		spec project: 'XMLParser' with: [
			spec
				className: 'ConfigurationOfXMLParser'; 
				file: 'ConfigurationOfXMLParser'; 
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main'. ].
		
	].
