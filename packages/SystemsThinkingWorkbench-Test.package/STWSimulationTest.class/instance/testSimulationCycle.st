testing
testSimulationCycle
	
	| playfield |
	playfield := STWPlayfield new.
	self assert: playfield simulationTime = 0.
	self assert: playfield simulationRunning not.
	playfield startSimulation.
	self assert: playfield simulationRunning.
	playfield stepSimulation.
	self assert: playfield simulationTime = 1.
	playfield stopSimulation.
	self assert: playfield simulationTime = 1.
	self assert: playfield simulationRunning not.
	playfield startSimulation.
	playfield resetSimulation.
	self assert: playfield simulationTime = 0.
	self assert: playfield simulationRunning not.
	
			