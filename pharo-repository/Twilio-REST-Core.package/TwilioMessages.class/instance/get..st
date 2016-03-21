public
get: aMessageSidString
	| response |
	response := self client httpGet: (self resourceUrl / aMessageSidString) asString.
	^ self readJsonFromResponse: response.