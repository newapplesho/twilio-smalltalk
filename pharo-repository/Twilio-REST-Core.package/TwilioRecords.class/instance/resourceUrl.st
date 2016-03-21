public
resourceUrl
	| url|
	url := self defaultResourceBaseUrl / 'Accounts' / self accountSid / 'Usage' / 'Records'.
	self subResource ifNotNil:[ ^ url / self subResource ].
	^ url