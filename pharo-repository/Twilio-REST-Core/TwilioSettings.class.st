Class {
	#name : #TwilioSettings,
	#superclass : #Object,
	#instVars : [
		'settingsDict'
	],
	#classInstVars : [
		'default'
	],
	#category : #'Twilio-REST-Core'
}

{ #category : #'instance creation' }
TwilioSettings class >> default [
	default ifNil: [default := self new].
	^default
]

{ #category : #'class initialization' }
TwilioSettings class >> initialize [
	default := nil
]

{ #category : #credentials }
TwilioSettings >> accountSid [
	^self at: #accountSid ifAbsentPut: ['']
]

{ #category : #credentials }
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

{ #category : #'actions-dictionary' }
TwilioSettings >> at: key [
	^self settingsDict at: key
]

{ #category : #'actions-dictionary' }
TwilioSettings >> at: key ifAbsent: aBlock [
	^self settingsDict at: key ifAbsent: aBlock
]

{ #category : #'actions-dictionary' }
TwilioSettings >> at: key ifAbsentPut: aBlock [
	^self settingsDict at: key ifAbsentPut: aBlock
]

{ #category : #'actions-dictionary' }
TwilioSettings >> at: key put: value [
	^self settingsDict at: key put: value
]

{ #category : #credentials }
TwilioSettings >> authToken [
	^self at: #authToken ifAbsentPut: ['']
]

{ #category : #credentials }
TwilioSettings >> authToken: aString [
	self at: #authToken put: aString
]

{ #category : #defaults }
TwilioSettings >> defaultApiVersion [
	^ '2010-04-01'
]

{ #category : #defaults }
TwilioSettings >> defaultHostname [
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

{ #category : #'accessing-private' }
TwilioSettings >> settingsDict [
	^ settingsDict ifNil: [settingsDict := IdentityDictionary new]
]
