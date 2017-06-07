simulation
startSimulation
	|buttons|
	self setSimulationRunning: true.
	self playButton label: 'Stop'.
	
	"return if we dont need to set a resetState"
	self simulationTime = 0 ifFalse:[self].
	buttons := (OrderedCollection  new)
			add: self playButton;
	 		add: self resetButton;
			asCollection.
	self resetState: (self submorphs copyWithoutAll: buttons).