initialization
initialize
	
	super initialize.
	self borderColor: Color black.
	self extent: self currentWorld extent / 2.
	self addSimulationButtons.
	self resetState: Array new.
	self resetSimulation.