public
get: aMessageSidString
	| response |
	response := self client httpGet: (self getResourceUrl / aMessageSidString) asString.
	^ self readJsonFromResponse: response.