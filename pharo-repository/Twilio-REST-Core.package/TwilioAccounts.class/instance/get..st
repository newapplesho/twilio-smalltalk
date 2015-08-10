public
get: aAccountSidString
	| response |
	self accountSid: aAccountSidString.
	response := self client httpGet: self getResourceUrl asString.
	^ self readJsonFromResponse: response.