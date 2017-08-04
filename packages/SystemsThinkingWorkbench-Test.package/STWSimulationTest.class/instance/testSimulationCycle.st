testing
testSimulationCycle
	
	| simulation time passedTime |
	simulation := STWSimulation new.
	passedTime := 50.
	time := DateAndTime millisecondClockValue + passedTime.
	
	self assert: 0 equals: simulation simulationTime.
 	self deny: simulation isRunning.
 	simulation startSimulation.
 	self assert: simulation isRunning.
 	simulation stepAt: time.
 	self assert: simulation simulationTime > 0.
 	simulation stopSimulation.
 	self assert: simulation simulationTime > 0.
 	self deny: simulation isRunning.
 	simulation startSimulation.
 	simulation resetSimulation.
 	self assert: 0 equals: simulation simulationTime.
 	self deny: simulation isRunning.
 	simulation stepAt: time.
 	self assert: 0 equals: simulation simulationTime.
 	simulation resetSimulation.
 	self assert: 0 equals: simulation simulationTime.
 	self deny: simulation isRunning.
