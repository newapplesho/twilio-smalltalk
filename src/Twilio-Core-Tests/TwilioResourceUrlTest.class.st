"
A TwilioResourceUrlTest is a test class for testing the behavior of TwilioResourceUrl
"
Class {
	#name : #TwilioResourceUrlTest,
	#superclass : #TestCase,
	#instVars : [
		'instance'
	],
	#category : #'Twilio-Core-Tests-Utilities'
}

{ #category : #running }
TwilioResourceUrlTest >> setUp [

	super setUp.
	instance := TwilioResourceUrl defaultBaseUrl
]

{ #category : #running }
TwilioResourceUrlTest >> tearDown [

	instance :=nil.
	super tearDown
]

{ #category : #tests }
TwilioResourceUrlTest >> testAsString [

	^self assert: instance asString equals: 'https://api.twilio.com/2010-04-01/'
]

{ #category : #tests }
TwilioResourceUrlTest >> testBaseUrlString [

	self assert: instance baseUrlString equals: 'https://api.twilio.com/2010-04-01/'
]

{ #category : #tests }
TwilioResourceUrlTest >> testComponents [

	self assert: instance components isCollection
]

{ #category : #tests }
TwilioResourceUrlTest >> testDefaultBaseUrl [

	self assert: instance defaultBaseUrl equals: 'https://api.twilio.com/2010-04-01/'
]

{ #category : #tests }
TwilioResourceUrlTest >> testDefaultExtension [

	self assert: instance defaultExtension equals: '.json'
]

{ #category : #tests }
TwilioResourceUrlTest >> testPrintString [

	^self assert: instance printString equals: 'https://api.twilio.com/2010-04-01/'
]
