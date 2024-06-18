"
A TwilioInstanceResourceTest is a test class for testing the behavior of TwilioInstanceResource
"
Class {
	#name : #TwilioInstanceResourceTest,
	#superclass : #TestCase,
	#instVars : [
		'instance'
	],
	#category : #'Twilio-Core-Tests-Base'
}

{ #category : #testing }
TwilioInstanceResourceTest class >> isAbstract [

	^ self == TwilioInstanceResourceTest
]

{ #category : #'accessing - defaults' }
TwilioInstanceResourceTest >> defaultTestClass [

	^ self subclassResponsibility
]

{ #category : #running }
TwilioInstanceResourceTest >> setUp [

	super setUp.
	instance := self defaultTestClass new
]

{ #category : #running }
TwilioInstanceResourceTest >> tearDown [

	instance := nil.
	super tearDown
]

{ #category : #tests }
TwilioInstanceResourceTest >> testResourceUrl [

	self subclassResponsibility
]
