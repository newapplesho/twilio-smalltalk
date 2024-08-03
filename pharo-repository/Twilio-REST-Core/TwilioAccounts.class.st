Class {
	#name : #TwilioAccounts,
	#superclass : #TwilioInstanceResource,
	#category : #'Twilio-REST-Core'
}

{ #category : #accessing }
TwilioAccounts >> calls [
	^ TwilioCalls client: self client
]

{ #category : #public }
TwilioAccounts >> get: aAccountSidString [
	| response |
	self accountSid: aAccountSidString.
	response := self client httpGet: self resourceUrl asString.
	^ self readJsonFromResponse: response.
]

{ #category : #accessing }
TwilioAccounts >> messages [
	^ TwilioMessages client: self client
]

{ #category : #accessing }
TwilioAccounts >> resourceUrl [
	^ self defaultResourceBaseUrl / 'Accounts' / self accountSid
]

{ #category : #accessing }
TwilioAccounts >> usage [
	^ TwilioUsage client: self client
]

{ #category : #convenience }
TwilioAccounts >> usageRecords [
	^ self usage records
]
