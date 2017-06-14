simulation
startSimulation

	self setSimulationRunning: true.
	self playButton label: 'Stop'.
	self startStepping.