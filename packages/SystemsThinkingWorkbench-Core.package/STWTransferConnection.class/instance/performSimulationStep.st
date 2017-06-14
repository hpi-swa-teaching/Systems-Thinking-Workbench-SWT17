updating
performSimulationStep
	
	| particle |
	self startNode level: self startNode level - self intake.
	particle := STWParticle new center: self vertices first; extent: 10@10; color: self startNode color.
	self particles add: particle.
	self addMorph: particle.
	self lastStepTime ifNil: [
		self startStepping.
		self lastStepTime: DateAndTime millisecondClockValue.]