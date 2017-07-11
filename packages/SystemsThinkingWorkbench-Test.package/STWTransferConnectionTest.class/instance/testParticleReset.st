testing
testParticleReset
	"Tests if a TransferConnection destroys particle morphs when the simulation is reset."

	| node1 node2 connection numSteps time |
	
	numSteps := 3.
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection := STWTransferConnection new.
	connection connect: node1 with: node2.
	
	self assert: connection particles size == 0.
	time := DateAndTime millisecondClockValue.
	numSteps timesRepeat: [connection performSimulationStep].
	
	self assert: connection particles size == numSteps.
	
	connection resetSimulation.
	
	self assert: connection particles size == 0.
	
	