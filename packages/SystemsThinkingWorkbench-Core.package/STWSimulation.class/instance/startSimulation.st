simulation
startSimulation
	
	self setSimulationRunning: true.
	self simulationTime = 0 ifTrue: 
				[self resetState: self submorphs veryDeepCopy.].
	self playButton label: 'Stop'.