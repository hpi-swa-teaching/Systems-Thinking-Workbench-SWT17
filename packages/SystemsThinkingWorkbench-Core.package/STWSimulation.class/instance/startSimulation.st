simulation
startSimulation

	self setSimulationRunning: true.
	self playButton label: 'Pause'.
	self startStepping.
	self lastStepTime: DateAndTime millisecondClockValue.
	self stepSimulation.