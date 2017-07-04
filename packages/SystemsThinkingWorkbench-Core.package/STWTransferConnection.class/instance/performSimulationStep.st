updating
performSimulationStep
	
	| particle |
	
	self startNode level: self startNode level - self intake.
	particle := STWParticle new center: (self position + self segment start);
									color: self startNode fillingMorph color;
									transferValue: self output.
	self particles add: particle.
	self addMorph: particle.
	self lastStepTime ifNil: [
		self startStepping.
		self lastStepTime: DateAndTime millisecondClockValue.].
