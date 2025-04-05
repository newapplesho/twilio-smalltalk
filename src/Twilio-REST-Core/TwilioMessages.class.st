Class {
	#name : #TwilioMessages,
	#superclass : #TwilioInstanceResource,
	#category : #'Twilio-REST-Core-Base'
}

{ #category : #public }
TwilioMessages >> get: aMessageSidString [
	| response |
	response := self client httpGet: (self resourceUrl / aMessageSidString) asString.
	^ self readJsonFromResponse: response.
]

{ #category : #'accessing - private' }
TwilioMessages >> resourceUrl [
	^ self defaultResourceBaseUrl / 'Accounts' / self accountSid / 'Messages'
]

{ #category : #public }
TwilioMessages >> sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString mediaUrl: aMediaUrlString [
	| entity response |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity at:'To' add: toPhoneNumberString.
	entity at:'From' add: fromPhoneNumberString.
	entity at:'Body' add: messageString.
	aMediaUrlString isEmptyOrNil ifFalse:[ entity at:'MediaUrl' add: aMediaUrlString ].
	self keysDo:[:key | entity at:key add: (self at:key) ].
	
	response := self client httpPost: self resourceUrl asString contents: entity.
	^ self readJsonFromResponse: response.
]
