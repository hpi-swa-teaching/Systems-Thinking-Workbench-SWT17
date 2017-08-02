simulation
resetSimulation
	"Signals all nodes to reset their level."
	
	self nodes do: [:aNode | aNode resetLevel].
	self connections do: [:aConnection | aConnection resetSimulation].
	self 
		stopSimulation;
		simulationTime: 0;
		lastStepTime: nil.
	self playButton label: 'Start'.
