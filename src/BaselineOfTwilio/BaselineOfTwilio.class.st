"
Baseline for [https://github.com/newapplesho/twilio-smalltalk](https://github.com/newapplesho/twilio-smalltalk)
"
Class {
	#name : 'BaselineOfTwilio',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTwilio-Base',
	#package : 'BaselineOfTwilio',
	#tag : 'Base'
}

{ #category : 'baselines' }
BaselineOfTwilio >> baseline: spec [
	 <baseline>

	spec for: #common do: [
		"Dependencies"
		self neoJSON: spec.
		
		"Packages"
		spec
			package: 'Twilio-Core' with: [ spec requires: #('NeoJSON') ];
			package: 'Twilio-Core-Tests' with: [ spec requires: #('Twilio-Core') ].
			
		"Groups"	
		spec 
			group: 'Core' with: #( 'Twilio-Core');
			group: 'Tests' with: #( 'Twilio-Core-Tests' );
			group: 'CI' with: #( 'Tests' );
			
			"Virtual Groups"
			group: 'all' with: #( 'Core' 'Tests' 'CI' );
			group: 'default' with: #( 'all' )	
	]
]

{ #category : 'baselines' }
BaselineOfTwilio >> neoJSON: spec [

	spec baseline: 'NeoJSON' with: [
		spec
			repository: 'github:///svenvc/NeoJSON:master/repository';
			loads: #( 'core' ) ]
]
