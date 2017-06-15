updating
performSimulationStep
	
	| particle |
	
	self startNode level: self startNode level - self intake.
	particle := STWParticle new center: self vertices first; color: self startNode fillingMorph color.
	self particles add: particle.
	self addMorph: particle.
	self lastStepTime ifNil: [
		self startStepping.
		self lastStepTime: DateAndTime millisecondClockValue.].