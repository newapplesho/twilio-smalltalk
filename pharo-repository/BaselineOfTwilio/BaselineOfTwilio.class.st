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
			package: 'Twilio-REST-Core'.
	].
]
