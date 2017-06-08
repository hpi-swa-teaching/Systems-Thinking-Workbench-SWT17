simulation
startSimulation

	self setSimulationRunning: true.
	self playButton label: 'Stop'.
	
	"return if we dont need to set a resetState"
	self simulationTime = 0 
		ifTrue: [self resetState: ((self connections) union: self nodes).]

	