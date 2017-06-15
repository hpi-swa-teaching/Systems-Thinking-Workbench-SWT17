simulation
startSimulation

	self setSimulationRunning: true.
	self playButton label: 'Pause'.
	self startStepping.
