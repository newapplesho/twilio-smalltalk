accessing
baseUrlString
	^ baseUrlString ifNil: [baseUrlString := self defaultBaseUrl]