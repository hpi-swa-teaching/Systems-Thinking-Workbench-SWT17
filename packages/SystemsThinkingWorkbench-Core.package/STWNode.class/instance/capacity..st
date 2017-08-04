accessing
capacity: anObject
	
	self levelMorph maximum: anObject.

	anObject ifNotNil:
		[self level > anObject 
			ifTrue: [self level: anObject].
		self density: 2 * anObject / (self width squared * Float pi).
		self updateFilling.].
