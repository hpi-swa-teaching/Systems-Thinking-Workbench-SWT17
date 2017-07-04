initialization
initialize
	
	super initialize.
	self borderColor: Color black.
	self extent: self currentWorld extent / 2.
	self addSimulationButtons.
	self nodes: OrderedCollection new.
	self synchronousConnections: OrderedCollection new.
	self asynchronousConnections: OrderedCollection new.
	self resetSimulation.
