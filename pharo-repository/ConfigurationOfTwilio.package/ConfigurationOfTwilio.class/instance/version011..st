versions
version011: spec 
	<version: '0.1.1' imports: #('0.1.1-baseline') >
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.29'.
		spec
			baseline: 'Twilio' with: [ 
				spec repository:'github://newapplesho/twilio-smalltalk:v0.1.1/pharo-repository' ];
			import: 'Twilio' 
	]