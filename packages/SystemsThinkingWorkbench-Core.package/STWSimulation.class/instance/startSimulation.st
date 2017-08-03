simulation
startSimulation

	self playButton label: 'Pause'.
	self lastStepTime ifNil: [self stepSimulation].
	running := true.
	self
		startStepping;
		lastStepTime: DateAndTime millisecondClockValue.
