simulation
stepSimulation

	self synchronousConnections
		do: [:connection | connection performSimulationStep].
	self simulationTime: self simulationTime + 1.
