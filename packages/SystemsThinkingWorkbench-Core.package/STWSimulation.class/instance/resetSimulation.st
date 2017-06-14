simulation
resetSimulation
	"Signals all Nodes to reset their level"
	
	self nodes do: [:aNode | aNode resetLevel]. 

	self stopSimulation.
	self simulationTime: 0.