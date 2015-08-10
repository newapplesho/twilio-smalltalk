versions
version01: spec 
	<version: '0.1' imports: #('0.1-baseline') >
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.29'.
		spec project: 'XMLParser' with: '2.4.7'.
		spec
			baseline: 'Twilio' with: [ 
				spec repository:'github://newapplesho/twilio-smalltalk:3e1c8ce5307d3dae1098ef0fce53bd9ebbaa425b/pharo-repository' ];
			import: 'Twilio' 
	]