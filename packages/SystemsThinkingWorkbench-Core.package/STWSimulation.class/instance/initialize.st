initialization
initialize
	
	super initialize.
	self borderColor: Color black;
		extent: self currentWorld extent / 2;
		addSimulationButtons;
		nodes: OrderedCollection new;
		connections: OrderedCollection new;
		resetSimulation.
