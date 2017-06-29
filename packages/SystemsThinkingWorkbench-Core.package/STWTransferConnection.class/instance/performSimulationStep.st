updating
performSimulationStep

	| particle |
	
	((self startNode canHold: self startNode level - self intake)
			and: (self endNode canHold: self endNode level + self output))
		ifTrue: [self startNode level: self startNode level - self intake.
			particle := STWParticle new center: self position + self segment start;
						 color: self startNode fillingMorph color.
			self particles add: particle.
			self addMorph: particle.
			self lastStepTime
				ifNil: [self startStepping.
					self lastStepTime: DateAndTime millisecondClockValue]]