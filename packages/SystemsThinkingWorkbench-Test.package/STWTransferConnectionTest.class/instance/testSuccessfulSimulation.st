testing
testSuccessfulSimulation
	"Tests if a TransferConnection takes X from Node1 and transfers Y to Node2."

	| node1 node2 connection |
	
	node1 := (STWNode new) center: 50@0; level: 15.
	node2 := (STWNode new) center: 50@50; level: 30.
	connection := STWTransferConnection new.
	connection connect: node1 with: node2.
	
	self assert: [node1 level == 15].
	self assert: [node2 level == 30].
	
	connection performSimulationStep.
	connection performSimulationStep.
	connection performSimulationStep.
	
	self assert: [node1 level == 12].
	self assert: [node2 level == 33].
	
	connection input: -2.
	connection output: 3.
	
	connection performSimulationStep.
	connection performSimulationStep.
	connection performSimulationStep.
	
	self assert: [node1 level == 18].
	self assert: [node2 level == 42].