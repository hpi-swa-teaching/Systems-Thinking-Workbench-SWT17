accessing
toggleNegativeAllowed

	negativeAllowed ifTrue: [self allowNegative] ifFalse: [self prohibitNegative].
