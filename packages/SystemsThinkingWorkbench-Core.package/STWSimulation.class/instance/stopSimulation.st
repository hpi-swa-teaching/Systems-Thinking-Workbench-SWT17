simulation
stopSimulation

	self playButton label: 'Resume'.
	running := false.
	self stopStepping.
