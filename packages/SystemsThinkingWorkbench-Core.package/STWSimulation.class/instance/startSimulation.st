simulation
startSimulation
	
	self setSimulationRunning: true.
	self simulationTime = 0 ifTrue: 
								[self resetState: self submorphs .].
	self playButton label: 'Stop'.