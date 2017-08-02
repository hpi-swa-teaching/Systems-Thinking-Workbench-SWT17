updating
performSimulationStep

	self isSynchronous
		ifTrue: [self addParticle].
