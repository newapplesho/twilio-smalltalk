Class {
	#name : #TwilioRestResponse,
	#superclass : #Object,
	#instVars : [
		'response'
	],
	#category : #'Twilio-REST-Core-Base'
}

{ #category : #'instance creation' }
TwilioRestResponse class >> on: znResponse [

	^ self new response: znResponse; yourself.
]

{ #category : #accessing }
TwilioRestResponse >> response [
	^ response
]

{ #category : #accessing }
TwilioRestResponse >> response: anObject [
	response := anObject
]

{ #category : #action }
TwilioRestResponse >> value [
	| responseJson exception|
	
	responseJson := (NeoJSONReader on: self response contents readStream)
			mapClass: NeoJSONObject ;
			propertyNamesAsSymbols: true;
			next.

	self response isSuccess 
		ifTrue:[^ responseJson ].
			
 	exception := TwilioRestException new.
	exception properties: responseJson.
	exception messageText: responseJson message.
	exception signal.
]
