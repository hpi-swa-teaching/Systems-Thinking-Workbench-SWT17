simulation
toggleSimulation

	self isSimulationRunning
		ifTrue: [self stopSimulation]
		ifFalse: [self startSimulation].