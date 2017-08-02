simulation
stepSimulation

	self connections do: [:connection | connection performSimulationStep].
