simulation
toggleSimulation

	self simulationRunning
		ifTrue: [self stopSimulation]
		ifFalse: [self startSimulation]