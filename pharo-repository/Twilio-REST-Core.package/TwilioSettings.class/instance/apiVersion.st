accessing
apiVersion
	^ self at: #apiVersion ifAbsentPut: [ self defaultApiVersion ]