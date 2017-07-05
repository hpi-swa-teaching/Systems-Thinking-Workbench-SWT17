accessing
canHold: aNumber
	^ (self maximum
			ifNil: [true]
			ifNotNil: [aNumber <= self maximum])
		and: (self minimum
			ifNil: [true]
			ifNotNil: [aNumber >= self minimum])
