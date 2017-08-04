simulation
resetSimulation
	"Signals all nodes and connections to reset."
	
	self nodes do: [:aNode | aNode resetLevel].
	self connections do: [:aConnection | aConnection resetSimulation].
	self 
		stopSimulation;
		simulationTime: 0;
		lastStepTime: nil.
	self playButton label: 'Start'.
