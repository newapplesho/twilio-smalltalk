public
list
	| response |
	response := self client httpGet: self resourceUrl asString.
	^ self readJsonFromResponse: response.