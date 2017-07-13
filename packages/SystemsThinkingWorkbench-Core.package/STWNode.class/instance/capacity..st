accessing
capacity: anObject
	
	self levelMorph maximum: anObject.

	anObject ifNotNil: [
		self level > anObject asNumber ifTrue: [self level: anObject asNumber].
		self density: 2 * anObject / (self width squared * Float pi).
		self updateFilling.]
