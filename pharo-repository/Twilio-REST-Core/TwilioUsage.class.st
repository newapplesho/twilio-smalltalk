Class {
	#name : #TwilioUsage,
	#superclass : #TwilioInstanceResource,
	#category : #'Twilio-REST-Core'
}

{ #category : #accessing }
TwilioUsage >> records [
	^ TwilioRecords client: self client
]

{ #category : #public }
TwilioUsage >> resourceUrl [
	^ self defaultResourceBaseUrl / 'Accounts' / self accountSid / 'Usage'
]
