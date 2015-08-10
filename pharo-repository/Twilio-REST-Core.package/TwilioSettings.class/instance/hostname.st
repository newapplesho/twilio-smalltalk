accessing
hostname
	^ self at: #host ifAbsentPut: [ self defaultHostname ]