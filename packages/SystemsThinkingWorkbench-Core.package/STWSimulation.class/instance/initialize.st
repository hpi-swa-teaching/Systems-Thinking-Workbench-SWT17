initialization
initialize
	
	super initialize.
	self borderColor: Color black.
	self extent: self currentWorld extent / 2.
	self addSimulationButtons.
	self nodes: OrderedCollection new.
	self connections: OrderedCollection new.
	self resetSimulation.