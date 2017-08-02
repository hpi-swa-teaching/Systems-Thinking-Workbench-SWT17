testing
testSimulationCycle
	
	| playfield time |
	playfield := STWSimulation new.
	time := DateAndTime millisecondClockValue + 50.
	
	self assert: 0 equals: playfield simulationTime.
 	self deny: playfield isRunning.
 	playfield startSimulation.
 	self assert: playfield isRunning.
 	playfield stepAt: time.
 	self assert: playfield simulationTime > 0.
 	playfield stopSimulation.
 	self assert: playfield simulationTime > 0.
 	self deny: playfield isRunning.
 	playfield startSimulation.
 	playfield resetSimulation.
 	self assert: 0 equals: playfield simulationTime.
 	self deny: playfield isRunning.
 	playfield stepAt: time.
 	self assert: 0 equals: playfield simulationTime.
 	playfield resetSimulation.
 	self assert: 0 equals: playfield simulationTime.
 	self deny: playfield isRunning.
