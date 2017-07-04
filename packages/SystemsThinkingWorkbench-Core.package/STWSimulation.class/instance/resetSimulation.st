simulation
resetSimulation
	"Signals all nodes to reset their level"
	
	self nodes do: [:aNode | aNode resetLevel].
	self connections do: [:aConnection | aConnection resetSimulation].

	self stopSimulation.
	self playButton label: 'Start'.
	self simulationTime: 0.
	self lastStepTime: nil.
