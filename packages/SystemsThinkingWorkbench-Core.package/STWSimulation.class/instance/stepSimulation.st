simulation
stepSimulation
	"Decreases the startNode level by the specified output, increases the endNode level by the specified intake (for every connection) and steps up the simulationTime."

	self connections
		do: [:connection | connection performSimulationStep.].
	self simulationTime: self simulationTime + 1.