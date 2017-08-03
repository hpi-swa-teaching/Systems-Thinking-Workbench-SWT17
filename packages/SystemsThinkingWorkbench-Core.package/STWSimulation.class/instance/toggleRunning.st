simulation
toggleRunning

	self isRunning
		ifTrue: [self stopSimulation]
		ifFalse: [self startSimulation].
