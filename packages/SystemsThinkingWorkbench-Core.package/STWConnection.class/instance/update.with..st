updating
update: anAspect with: anObject

	self isSynchronous ifFalse:
		[(anAspect = #input
			and: [anObject = self startNode])
				ifTrue: [self addParticle]].
