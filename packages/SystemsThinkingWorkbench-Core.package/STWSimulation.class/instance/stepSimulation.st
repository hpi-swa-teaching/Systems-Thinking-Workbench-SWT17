simulation
stepSimulation

	self connections
		do: [:connection | connection performSimulationStep].
	self simulationTime: self simulationTime + 1.
