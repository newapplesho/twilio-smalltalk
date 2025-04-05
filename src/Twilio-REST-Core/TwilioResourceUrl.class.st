Class {
	#name : #TwilioResourceUrl,
	#superclass : #Object,
	#instVars : [
		'baseUrlString',
		'components',
		'query',
		'extension'
	],
	#category : #'Twilio-REST-Core-Base'
}

{ #category : #'instance creation' }
TwilioResourceUrl class >> defaultBaseUrl [
	^ self new 
]

{ #category : #concatenating }
TwilioResourceUrl >> / string [
	self components add: string
]

{ #category : #private }
TwilioResourceUrl >> apiVersion [
	^ TwilioSettings default apiVersion.
]

{ #category : #converting }
TwilioResourceUrl >> asString [
	| stream |
	self components isEmpty ifTrue: [^self baseUrlString].
	stream := WriteStream with: self baseUrlString.
	self components do: [:each | stream nextPutAll: each] separatedBy: [stream nextPut: $/].
	stream nextPutAll: self extension.
	self query ifNotNil:[ stream nextPut:$?. stream nextPutAll: self query ].
	^stream contents
]

{ #category : #accessing }
TwilioResourceUrl >> baseUrlString [
	^ baseUrlString ifNil: [baseUrlString := self defaultBaseUrl]
]

{ #category : #accessing }
TwilioResourceUrl >> baseUrlString: anObject [
	baseUrlString := anObject
]

{ #category : #accessing }
TwilioResourceUrl >> components [
	^ components ifNil: [components := OrderedCollection new]
]

{ #category : #accessing }
TwilioResourceUrl >> components: anObject [
	components := anObject
]

{ #category : #defaults }
TwilioResourceUrl >> defaultBaseUrl [
	^ 'https://', TwilioSettings default hostname ,'/', self apiVersion, '/'

]

{ #category : #defaults }
TwilioResourceUrl >> defaultExtension [
	^ '.json'
]

{ #category : #accessing }
TwilioResourceUrl >> extension [
	^ extension ifNil:[ extension := self defaultExtension ]
]

{ #category : #accessing }
TwilioResourceUrl >> extension: anObject [
	extension := anObject
]

{ #category : #printing }
TwilioResourceUrl >> printOn: aStream [
	aStream nextPutAll: self asString
]

{ #category : #accessing }
TwilioResourceUrl >> query [
	^ query
]

{ #category : #accessing }
TwilioResourceUrl >> query: anObject [
	query := anObject
]
