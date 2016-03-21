public
get: aAccountSidString
	| response |
	self accountSid: aAccountSidString.
	response := self client httpGet: self resourceUrl asString.
	^ self readJsonFromResponse: response.