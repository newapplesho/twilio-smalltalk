"
A TwilioUsageTest is a test class for testing the behavior of TwilioUsage
"
Class {
	#name : #TwilioUsageTest,
	#superclass : #TwilioInstanceResourceTest,
	#category : #'Twilio-REST-Core-Tests-Base'
}

{ #category : #'accessing - defaults' }
TwilioUsageTest >> defaultTestClass [
	^ TwilioUsage
]

{ #category : #test }
TwilioUsageTest >> testResourceUrl [

	self assert: (instance resourceUrl asString beginsWith: 'https://api.twilio.com/2010-04-01/Accounts').
	self assert: (instance resourceUrl asString endsWith: 'Usage.json')
]
