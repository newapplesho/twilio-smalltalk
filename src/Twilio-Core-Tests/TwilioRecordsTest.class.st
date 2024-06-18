"
A TwilioRecordsTest is a test class for testing the behavior of TwilioRecords
"
Class {
	#name : #TwilioRecordsTest,
	#superclass : #TwilioInstanceResourceTest,
	#category : #'Twilio-Core-Tests-Base'
}

{ #category : #'accessing - defaults' }
TwilioRecordsTest >> defaultTestClass [

	^ TwilioRecords
]

{ #category : #tests }
TwilioRecordsTest >> testResourceUrl [

	self assert: (instance resourceUrl asString beginsWith: 'https://api.twilio.com/2010-04-01/Accounts').
	self assert: (instance resourceUrl asString endsWith: 'Usage/Records.json')
]
