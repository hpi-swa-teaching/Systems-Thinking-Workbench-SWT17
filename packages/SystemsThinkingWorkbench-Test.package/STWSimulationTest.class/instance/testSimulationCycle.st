testing
testSimulationCycle
	
	| playfield time |
	playfield := STWSimulation new.
	time := DateAndTime millisecondClockValue + 50.
	
	self assert: 0 equals: playfield simulationTime.
 	self deny: playfield isSimulationRunning.
 	playfield startSimulation.
 	self assert: playfield isSimulationRunning.
 	playfield stepAt: time.
 	self assert: playfield simulationTime > 0.
 	playfield stopSimulation.
 	self assert: playfield simulationTime > 0.
 	self deny: playfield isSimulationRunning.
 	playfield startSimulation.
 	playfield resetSimulation.
 	self assert: 0 equals: playfield simulationTime.
 	self deny: playfield isSimulationRunning.
 	playfield stepAt: time.
 	self assert: 0 equals: playfield simulationTime.
 	playfield resetSimulation.
 	self assert: 0 equals: playfield simulationTime.
 	self deny: playfield isSimulationRunning.
