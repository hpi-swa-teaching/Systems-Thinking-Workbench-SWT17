simulation
startSimulation

	self setSimulationRunning: true.
	self playButton label: 'Pause'.
	self startStepping.
	
	self lastStepTime 
		ifNotNil:
			[self lastStepTime: DateAndTime millisecondClockValue]
		ifNil:
			[self lastStepTime: DateAndTime millisecondClockValue.
			self stepSimulation.].	
