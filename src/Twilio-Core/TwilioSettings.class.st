"
General Twilio settings
"
Class {
	#name : #TwilioSettings,
	#superclass : #Object,
	#instVars : [
		'settingsDict'
	],
	#classVars : [
		'Default'
	],
	#category : #'Twilio-Core-Settings'
}

{ #category : #accessing }
TwilioSettings class >> default [
	<sampleInstance>

	^ Default ifNil: [ Default := self new ]
]

{ #category : #'class initialization' }
TwilioSettings class >> reset [
	<script>

	Default := nil
]

{ #category : #accessing }
TwilioSettings >> accountSid [

	^ self at: #accountSid ifAbsentPut: [ '' ]
]

{ #category : #accessing }
TwilioSettings >> accountSid: aString [

	self at: #accountSid put: aString
]

{ #category : #accessing }
TwilioSettings >> apiVersion [

	^ self at: #apiVersion ifAbsentPut: [ self defaultApiVersion ]
]

{ #category : #accessing }
TwilioSettings >> apiVersion:  aString [

	self at: #apiVersion put: aString
]

{ #category : #'actions - dictionary' }
TwilioSettings >> at: key [

	^ self settingsDict at: key
]

{ #category : #'actions - dictionary' }
TwilioSettings >> at: key ifAbsent: aBlock [

	^ self settingsDict at: key ifAbsent: aBlock
]

{ #category : #'actions - dictionary' }
TwilioSettings >> at: key ifAbsentPut: aBlock [

	^ self settingsDict at: key ifAbsentPut: aBlock
]

{ #category : #'actions - dictionary' }
TwilioSettings >> at: key put: value [

	^ self settingsDict at: key put: value
]

{ #category : #accessing }
TwilioSettings >> authToken [

	^ self at: #authToken ifAbsentPut: ['']
]

{ #category : #accessing }
TwilioSettings >> authToken: aString [

	self at: #authToken put: aString
]

{ #category : #'accessing - defaults' }
TwilioSettings >> defaultApiVersion [
	"Return the default API version of Twilio"

	^ '2010-04-01'
]

{ #category : #'accessing - defaults' }
TwilioSettings >> defaultHostname [
	"Return the default API entrypoint"

	^ 'api.twilio.com'
]

{ #category : #accessing }
TwilioSettings >> hostname [

	^ self at: #host ifAbsentPut: [ self defaultHostname ]
]

{ #category : #accessing }
TwilioSettings >> hostname:  aString [

	self at: #hostname put: aString
]

{ #category : #'private - accessing' }
TwilioSettings >> settingsDict [
	"A dictionary with settings"

	^ settingsDict ifNil: [settingsDict := IdentityDictionary new]
]
