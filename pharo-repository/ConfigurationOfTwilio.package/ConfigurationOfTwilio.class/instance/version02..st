versions
version02: spec 
	<version: '0.2' imports: #('0.1.1-baseline') >
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.29'.
		spec
			baseline: 'Twilio' with: [ 
				spec repository:'github://newapplesho/twilio-smalltalk:v0.2/pharo-repository' ];
			import: 'Twilio' 
	]