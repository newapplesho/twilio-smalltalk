"
A TwilioCallsTest is a test class for testing the behavior of TwilioCalls
"
Class {
	#name : #TwilioCallsTest,
	#superclass : #TwilioInstanceResourceTest,
	#category : #'Twilio-Core-Tests-Base'
}

{ #category : #'accessing - defaults' }
TwilioCallsTest >> defaultTestClass [

	^ TwilioCalls
]

{ #category : #tests }
TwilioCallsTest >> testResourceUrl [

	self assert: (instance resourceUrl asString beginsWith: 'https://api.twilio.com/2010-04-01/Accounts').
	self assert: (instance resourceUrl asString endsWith: 'Calls.json')
]
