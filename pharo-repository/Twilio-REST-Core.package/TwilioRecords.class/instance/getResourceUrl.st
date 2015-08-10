public
getResourceUrl
	| url|
	url := self path / 'Records'.
	self subresource ifNotNil:[ ^ url / self subresource ].
	^ url