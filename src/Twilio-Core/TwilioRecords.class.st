"
Records in Twilio
"
Class {
	#name : #TwilioRecords,
	#superclass : #TwilioInstanceResource,
	#instVars : [
		'subResource'
	],
	#category : #'Twilio-Core-Base'
}

{ #category : #accessing }
TwilioRecords >> allTime [

	^ self subResource: 'AllTime'
]

{ #category : #accessing }
TwilioRecords >> daily [

	^ self subResource: 'Daily'
]

{ #category : #accessing }
TwilioRecords >> lastMonth [

	^ self subResource: 'LastMonth'
]

{ #category : #accessing }
TwilioRecords >> list [
	| response |
	response := self client httpGet: self resourceUrl asString.
	^ self readJsonFromResponse: response
]

{ #category : #accessing }
TwilioRecords >> listSelectionCategoryAt: categoryStringOrSymbol [
	| entity urlString response |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity contentType charSet: 'utf-8'.
	entity at: #Category add: categoryStringOrSymbol.
	urlString := String streamContents: [ :stream | entity writeOn: stream ].
	response := self client httpGet: (self resourceUrl / urlString) asString.
	^ self readJsonFromResponse: response
]

{ #category : #accessing }
TwilioRecords >> listSelectionCategoryAt: categoryStringOrSymbol startDate: aStartDateString endDate: aEndDateString [
	| entity urlString response |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity contentType charSet: 'utf-8'.
	entity at: #Category add: categoryStringOrSymbol.
	entity at: #StartDate add: aStartDateString.
	entity at: #EndDate add: aEndDateString.
	urlString := String streamContents: [ :stream | entity writeOn: stream ].

	response := self client httpGet: (self resourceUrl / urlString) asString.
	^ self readJsonFromResponse: response
]

{ #category : #accessing }
TwilioRecords >> monthly [

	^ self subResource: 'Monthly'
]

{ #category : #'private - accessing' }
TwilioRecords >> resourceUrl [
	| url|
	url := self defaultResourceBaseUrl / 'Accounts' / self accountSid / 'Usage' / 'Records'.
	self subResource ifNotNil:[ ^ url / self subResource ].
	^ url
]

{ #category : #accessing }
TwilioRecords >> subResource [
	^ subResource
]

{ #category : #accessing }
TwilioRecords >> subResource: anObject [
	subResource := anObject
]

{ #category : #accessing }
TwilioRecords >> thisMonth [

	^ self subResource: 'ThisMonth'
]

{ #category : #accessing }
TwilioRecords >> today [

	^ self subResource: 'Today'
]

{ #category : #accessing }
TwilioRecords >> yearly [

	^ self subResource: 'Yearly'
]

{ #category : #accessing }
TwilioRecords >> yesterday [

	^ self subResource: 'Yesterday'
]
