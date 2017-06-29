accessing
capacity: anObject

	self levelMorph maximum: anObject.
	anObject ifNotNil: [self density: self width squared * Float pi / (2 * anObject)].
	self updateFilling.
