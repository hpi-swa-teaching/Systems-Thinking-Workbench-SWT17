testing
testSimulationCycle
	
	| playfield |
	playfield := STWSimulation new.
	self assert: playfield simulationTime = 0.
	self assert: playfield isSimulationRunning not.
	playfield startSimulation.
	self assert: playfield isSimulationRunning.
	playfield stepSimulation.
	self assert: playfield simulationTime = 1.
	playfield stopSimulation.
	self assert: playfield simulationTime = 1.
	self assert: playfield isSimulationRunning not.
	playfield startSimulation.
	playfield resetSimulation.
	self assert: playfield simulationTime = 0.
	self assert: playfield isSimulationRunning not.
	playfield stepSimulation.
	self assert: playfield simulationTime = 1.
	playfield resetSimulation.
	self assert: playfield simulationTime = 0.
	self assert: playfield isSimulationRunning not.
	
			