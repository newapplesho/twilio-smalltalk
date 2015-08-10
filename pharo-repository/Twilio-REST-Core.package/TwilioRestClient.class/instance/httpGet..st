http-method
httpGet: aUri
	| request |
	request := self createRequest.
	request method: #GET.
	request url: aUri asString.
	self client request: request.
	client execute.
	^ client response.