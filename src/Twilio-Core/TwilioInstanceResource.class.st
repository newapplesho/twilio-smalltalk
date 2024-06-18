"
Abstract superclass for all Twilio Resources
"
Class {
	#name : #TwilioInstanceResource,
	#superclass : #NeoJSONObject,
	#instVars : [
		'client',
		'accountSid'
	],
	#category : #'Twilio-Core-Base'
}

{ #category : #'instance creation' }
TwilioInstanceResource class >> client: client [

	^ self new client: client; yourself
]

{ #category : #testing }
TwilioInstanceResource class >> isAbstract [

	^ self == TwilioInstanceResource
]

{ #category : #accessing }
TwilioInstanceResource >> accountSid [

	^ accountSid ifNil:[ self settings accountSid ]
]

{ #category : #accessing }
TwilioInstanceResource >> accountSid: anObject [

	accountSid := anObject
]

{ #category : #accessing }
TwilioInstanceResource >> client [

	^ client
]

{ #category : #accessing }
TwilioInstanceResource >> client: anObject [

	client := anObject
]

{ #category : #'private - accessing defaults' }
TwilioInstanceResource >> defaultResourceBaseUrl [

	^ TwilioResourceUrl defaultBaseUrl
]

{ #category : #'private - accessing defaults' }
TwilioInstanceResource >> defaultResponseClass [

	^ TwilioRestResponse
]

{ #category : #'private - utilities' }
TwilioInstanceResource >> readJsonFromResponse: response [

	^ (self defaultResponseClass on: response) value
]

{ #category : #'private - accessing' }
TwilioInstanceResource >> resourceUrl [

	^ self subclassResponsibility
]

{ #category : #'private - accessing' }
TwilioInstanceResource >> settings [
	"Return the settings"

	^ TwilioSettings default
]
