testing
testSimulationCycle
	
	| playfield time |
	playfield := STWSimulation new.
	
	time := DateAndTime millisecondClockValue + 50.
	self assert: playfield simulationTime = 0.
 	self assert: playfield isSimulationRunning not.
 	playfield startSimulation.
 	self assert: playfield isSimulationRunning.
 	playfield stepAt: time.
 	self assert: playfield simulationTime > 0.
 	playfield stopSimulation.
 	self assert: playfield simulationTime > 0.
 	self assert: playfield isSimulationRunning not.
 	playfield startSimulation.
 	playfield resetSimulation.
 	self assert: playfield simulationTime = 0.
 	self assert: playfield isSimulationRunning not.
 	playfield stepAt: time.
 	self assert: playfield simulationTime = 0.
 	playfield resetSimulation.
 	self assert: playfield simulationTime = 0.
 	self assert: playfield isSimulationRunning not.