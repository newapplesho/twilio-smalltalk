"
Twilio Usage
"
Class {
	#name : #TwilioUsage,
	#superclass : #TwilioInstanceResource,
	#category : #'Twilio-Core-Base'
}

{ #category : #accessing }
TwilioUsage >> records [

	^ TwilioRecords client: self client
]

{ #category : #accessing }
TwilioUsage >> resourceUrl [

	^ self defaultResourceBaseUrl / 'Accounts' / self accountSid / 'Usage'
]
