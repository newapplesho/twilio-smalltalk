versions
version021: spec 
	<version: '0.2.1' imports: #('0.1.1-baseline') >
	
	spec for: #common do: [
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.33'.
		spec
			baseline: 'Twilio' with: [ 
				spec repository:'github://newapplesho/twilio-smalltalk:v0.2.1/pharo-repository' ];
			import: 'Twilio' 
	]