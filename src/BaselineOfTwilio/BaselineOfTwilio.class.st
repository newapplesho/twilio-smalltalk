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
		spec baseline: 'NeoJSON' with: [
			spec repository: 'github:///svenvc/NeoJSON:master/repository';
			loads: #('core') ].
		spec
			package: 'Twilio-Core' with: [ spec requires: #('NeoJSON') ];
			package: 'Twilio-Core-Tests' with: [ spec requires: #('Twilio-Core') ]
	]
]
