updating
update: anAspect with: anObject
	
	self isSynchronous ifFalse:[
		anAspect == #input ifTrue: [anObject == self startNode ifTrue: [self addParticle]]]
