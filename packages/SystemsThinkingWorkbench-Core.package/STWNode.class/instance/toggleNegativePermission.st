accessing
toggleNegativePermission

	negativeAllowed ifTrue: [self permitNegative] ifFalse: [self denyNegative].
