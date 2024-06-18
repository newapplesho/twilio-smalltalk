"
A TwilioMessagesTest is a test class for testing the behavior of TwilioMessages
"
Class {
	#name : #TwilioMessagesTest,
	#superclass : #TwilioInstanceResourceTest,
	#category : #'Twilio-Core-Tests-Base'
}

{ #category : #'accessing - defaults' }
TwilioMessagesTest >> defaultTestClass [

	^ TwilioMessages
]

{ #category : #tests }
TwilioMessagesTest >> testResourceUrl [

	self assert: (instance resourceUrl asString beginsWith: 'https://api.twilio.com/2010-04-01/Accounts').
	self assert: (instance resourceUrl asString endsWith: 'Messages.json')
]
