simulation
stopSimulation
	
	self setSimulationRunning: false.
	self playButton label: 'Start'.
	self stopStepping.