Class {
	#name : #TwilioInstanceResource,
	#superclass : #NeoJSONObject,
	#instVars : [
		'client',
		'accountSid'
	],
	#category : #'Twilio-REST-Core-Base'
}

{ #category : #'instance creation' }
TwilioInstanceResource class >> client: client [
	^ self new client: client; yourself.
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

{ #category : #defaults }
TwilioInstanceResource >> defaultResourceBaseUrl [
	^ TwilioResourceUrl defaultBaseUrl.
]

{ #category : #defaults }
TwilioInstanceResource >> defaultResponseClass [
	^ TwilioRestResponse
]

{ #category : #private }
TwilioInstanceResource >> readJsonFromResponse: response [

	^ (self defaultResponseClass on: response) value.

	
]

{ #category : #public }
TwilioInstanceResource >> resourceUrl [
	self subclassResponsibility 
]

{ #category : #private }
TwilioInstanceResource >> settings [
	^ TwilioSettings default
]
