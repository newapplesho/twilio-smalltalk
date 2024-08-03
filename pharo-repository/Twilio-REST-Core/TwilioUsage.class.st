Class {
	#name : #TwilioUsage,
	#superclass : #TwilioInstanceResource,
	#category : #'Twilio-REST-Core-Base'
}

{ #category : #accessing }
TwilioUsage >> records [
	^ TwilioRecords client: self client
]

{ #category : #'accessing-private' }
TwilioUsage >> resourceUrl [
	^ self defaultResourceBaseUrl / 'Accounts' / self accountSid / 'Usage'
]
