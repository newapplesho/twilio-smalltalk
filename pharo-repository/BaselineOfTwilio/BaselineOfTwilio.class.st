Class {
	#name : #BaselineOfTwilio,
	#superclass : #BaselineOf,
	#category : #BaselineOfTwilio
}

{ #category : #baselines }
BaselineOfTwilio >> baseline: spec [ 
	 <baseline>
	
	spec for: #common do: [
		spec baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
		spec 
			package: 'Twilio-REST-Core' with: [ spec requires: #('NeoJSON') ];
			package: 'Twilio-REST-Core-Tests' with: [ spec requires: #( 'Twilio-REST-Core' ) ].
		
		spec 
			group: 'Core' with: #( 'Twilio-REST-Core');
			group: 'Tests' with: #( 'Twilio-REST-Core-Tests' );
			group: 'CI' with: #( 'Tests' ).
	].
]
