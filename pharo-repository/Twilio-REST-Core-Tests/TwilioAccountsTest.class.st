"
A TwilioAccountsTest is a test class for testing the behavior of TwilioAccounts
"
Class {
	#name : #TwilioAccountsTest,
	#superclass : #TwilioInstanceResourceTest,
	#category : #'Twilio-REST-Core-Tests-Base'
}

{ #category : #'accessing - defaults' }
TwilioAccountsTest >> defaultTestClass [
	^ TwilioAccounts
]

{ #category : #tests }
TwilioAccountsTest >> testResourceUrl [

	self assert: (instance resourceUrl asString beginsWith: 'https://api.twilio.com/2010-04-01/Accounts')
]
