"
A TwilioSettingsTest is a test class for testing the behavior of TwilioSettings
"
Class {
	#name : #TwilioSettingsTest,
	#superclass : #TestCase,
	#instVars : [
		'instance'
	],
	#category : #'Twilio-Core-Tests-Settings'
}

{ #category : #running }
TwilioSettingsTest >> setUp [

	super setUp.
	instance := TwilioSettings default
]

{ #category : #running }
TwilioSettingsTest >> tearDown [

	instance := nil.
	super tearDown
]

{ #category : #tests }
TwilioSettingsTest >> testAccessingDefault [

	self assert: instance notNil.
	self assert: (instance isKindOf: TwilioSettings)
]

{ #category : #tests }
TwilioSettingsTest >> testAccountSid [

	self assert: instance accountSid isString
]

{ #category : #tests }
TwilioSettingsTest >> testApiVersion [

	self assert: instance apiVersion equals: '2010-04-01'
]

{ #category : #tests }
TwilioSettingsTest >> testAuthToken [

	self assert: instance authToken isString
]

{ #category : #tests }
TwilioSettingsTest >> testDefaultApiVersion [

	self assert: instance defaultApiVersion equals: '2010-04-01'
]

{ #category : #tests }
TwilioSettingsTest >> testDefaultHostname [

	self assert: instance defaultHostname equals: 'api.twilio.com'
]

{ #category : #tests }
TwilioSettingsTest >> testHostname [

	self assert: instance hostname equals: 'api.twilio.com'
]

{ #category : #tests }
TwilioSettingsTest >> testSettingsDict [

	self assert: instance settingsDict isDictionary
]
