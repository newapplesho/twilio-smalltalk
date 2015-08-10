public
list
	| response |
	response := self client httpGet: self getResourceUrl asString.
	^ self readJsonFromResponse: response.