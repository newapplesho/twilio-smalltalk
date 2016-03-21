public
listSelectionCategoryAt: categoryStringOrSymbol 
	| entity urlString response |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity contentType charSet: 'utf-8'.
	entity at: #Category add: categoryStringOrSymbol.
	urlString := String streamContents: [ :stream | entity writeOn: stream ]. 
	response := self client httpGet: (self resourceUrl / urlString) asString.
	^ self readJsonFromResponse: response.