"
A REST client for Twilio
"
Class {
	#name : #TwilioRestClient,
	#superclass : #Object,
	#instVars : [
		'client',
		'accounts'
	],
	#category : #'Twilio-Core-REST'
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
TwilioRestClient >> acounts: aCollection [

	accounts := aCollection
]

{ #category : #accessing }
TwilioRestClient >> client [
	^ client ifNil: [ client := self defaultClient new ]
]

{ #category : #private }
TwilioRestClient >> createRequest [

	| request |
	request := ZnRequest empty.
	request
		setBasicAuthenticationUsername: TwilioSettings default accountSid
		password: TwilioSettings default authToken.
	^ request
]

{ #category : #'private - accessing' }
TwilioRestClient >> defaultClient [

	^ ZnClient
]

{ #category : #'private - accessing' }
TwilioRestClient >> getAccount: aString [

	^ self accounts get: aString
]

{ #category : #messaging }
TwilioRestClient >> getMessage: aString [

	^ self accounts messages get: aString
]

{ #category : #'private - utilities' }
TwilioRestClient >> httpGet: aUri [
	| request |
	request := self createRequest.
	request method: #GET.
	request url: aUri asString.
	self client request: request.
	client execute.
	^ client response
]

{ #category : #'private - utilities' }
TwilioRestClient >> httpPost: aUri contents: entity [
	| request |
	request := self createRequest.
	request method: #POST.
	request url: aUri asString.
	request entity: entity.
	self client request: request.
	client execute.
	^ client response
]

{ #category : #'private - utilities' }
TwilioRestClient >> makeCallTo: toPhoneNumberString from: fromPhoneNumberString twiML: xmlString [

	| urlString |
	urlString := xmlString.
	^ self makeCallTo: toPhoneNumberString from: fromPhoneNumberString url: urlString
]

{ #category : #'private - utilities' }
TwilioRestClient >> makeCallTo: toPhoneNumberString from: fromPhoneNumberString url: urlString [

	^ self accounts calls makeCallTo: toPhoneNumberString from: fromPhoneNumberString url: urlString
]

{ #category : #'private - utilities' }
TwilioRestClient >> sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString [
	^ self accounts messages sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString mediaUrl: nil
]

{ #category : #'private - utilities' }
TwilioRestClient >> sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString mediaUrl: aMediaUrlString [

	^ self accounts messages sendTo: toPhoneNumberString from: fromPhoneNumberString message: messageString mediaUrl: aMediaUrlString
]

{ #category : #'private - utilities' }
TwilioRestClient >> usageRecords [

	^ self accounts usageRecords
]
