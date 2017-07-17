accessing
toggleNegativePermission

	negativeAllowed
		ifTrue: [self prohibitNegative]
		ifFalse: [self permitNegative].
