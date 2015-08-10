public
listSelectionCategoryAt: categoryStringOrSymbol startDate: aStartDateString endDate: aEndDateString
	| entity urlString response |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity contentType charSet: 'utf-8'.
	entity at: #Category add: categoryStringOrSymbol.
	entity at: #StartDate add: aStartDateString.
	entity at: #EndDate add: aEndDateString.
	urlString := String streamContents: [ :stream | entity writeOn: stream ]. 
	
	response := self client httpGet: (self getResourceUrl / urlString) asString.
	^ self readJsonFromResponse: response.