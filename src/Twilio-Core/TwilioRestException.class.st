"
A specific issue with the Twilio REST bindings
"
Class {
	#name : #TwilioRestException,
	#superclass : #Error,
	#instVars : [
		'properties'
	],
	#category : #'Twilio-Core-Exceptions'
}

{ #category : #accessing }
TwilioRestException >> code [

	^ self properties code
]

{ #category : #accessing }
TwilioRestException >> errorCode [

	^ self code
]

{ #category : #accessing }
TwilioRestException >> message [

	^ self properties message
]

{ #category : #accessing }
TwilioRestException >> moreInfo [

	^ self properties more_info
]

{ #category : #accessing }
TwilioRestException >> properties [

	^ properties
]

{ #category : #accessing }
TwilioRestException >> properties: anObject [

	properties := anObject
]

{ #category : #accessing }
TwilioRestException >> status [
	^ self properties status
]
