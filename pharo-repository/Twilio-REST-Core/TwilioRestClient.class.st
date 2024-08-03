Class {
	#name : #TwilioRestClient,
	#superclass : #Object,
	#instVars : [
		'accounts',
		'client'
	],
	#category : #'Twilio-REST-Core'
}

{ #category : #accessing }
TwilioRestClient >> accounts [
	^ accounts ifNil:[ accounts := TwilioAccounts client: self ]
]

{ #category : #accessing }
TwilioRestClient >> accounts: anObject [
	accounts := anObject
]

{ #category : #accessing }
TwilioRestClient >> client [
	^ client ifNil: [ client := self defaultClient new ]
]

{ #category : #private }
TwilioRestClient >> createRequest [
	| request |
	request := ZnRequest empty.
	request setBasicAuthenticationUsername: TwilioSettings default accountSid  password: TwilioSettings default authToken.
	^ request
]

{ #category : #defaults }
TwilioRestClient >> defaultClient [
	^ ZnClient
]

{ #category : #'public-Accounts' }
TwilioRestClient >> getAccount: aString [
	^ self accounts get: aString
]

{ #category : #'public-Messaging' }
TwilioRestClient >> getMessage: aString [
	^ self accounts messages get: aString
]

{ #category : #'http-method' }
TwilioRestClient >> httpGet: aUri [
	| request |
	request := self createRequest.
	request method: #GET.
	request url: aUri asString.
	self client request: request.
	client execute.
	^ client response.
]

{ #category : #'http-method' }
TwilioRestClient >> httpPost: aUri contents: entity [
	| request |
	request := self createRequest.
	request method: #POST.
	request url: aUri asString.
	request entity: entity.
	self client request: request.
	client execute.
	^ client response.
]

{ #category : #'public-Calls' }
TwilioRestClient >> makeCallTo: toPhoneNumberString from: fromPhoneNumberString twiML: xmlString [
	| urlString |
	urlString := xmlString.
	^ self makeCallTo: toPhoneNumberString from: fromPhoneNumberString url: urlString
]

{ #category : #'public-Calls' }
TwilioRestClient >> makeCallTo: toPhoneNumberString from: fromPhoneNumberString url: urlString [
	^ self accounts calls makeCallTo: toPhoneNumberString from: fromPhoneNumberString url: urlString
]

{ #category : #'public-Messaging' }
TwilioRestClient >> sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString [
	^ self accounts messages sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString mediaUrl: nil.
]

{ #category : #'public-Messaging' }
TwilioRestClient >> sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString mediaUrl: aMediaUrlString [
	^ self accounts messages sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString mediaUrl: aMediaUrlString.
]

{ #category : #'public-Usage' }
TwilioRestClient >> usageRecords [
	^ self accounts usageRecords
]
