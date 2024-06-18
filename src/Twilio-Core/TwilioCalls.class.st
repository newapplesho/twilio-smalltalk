"
Calls in Twilio
"
Class {
	#name : #TwilioCalls,
	#superclass : #TwilioInstanceResource,
	#category : #'Twilio-Core-Base'
}

{ #category : #public }
TwilioCalls >> makeCallTo: toPhoneNumberString from: fromPhoneNumberString url: urlString [
	| entity response |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity at:'To' add: toPhoneNumberString.
	entity at:'From' add: fromPhoneNumberString.
	entity at:'Url' add: urlString.
	self keysDo:[:key | entity at:key add: (self at:key) ].

	response := self client httpPost: self resourceUrl asString contents: entity.
	^ self readJsonFromResponse: response
]

{ #category : #'private - accessing' }
TwilioCalls >> resourceUrl [

	^ self defaultResourceBaseUrl / 'Accounts' / self accountSid / 'Calls'
]
