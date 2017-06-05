testing
testSuccessfulSimulation
	"Tests if a TransferConnection takes X from Node1 and transfers Y to Node2."

	| node1 node2 connection startlevel1 startlevel2|
	
	startlevel1 := 15.
	startlevel2 := 30.
	node1 := (STWNode new) center: 50@0; level: startlevel1.
	node2 := (STWNode new) center: 50@50; level: startlevel2.
	connection := STWTransferConnection new.
	connection connect: node1 with: node2.
	
	self assert: [node1 level == startlevel1].
	self assert: [node2 level == startlevel2].
	
	connection performSimulationStep.
	connection performSimulationStep.
	connection performSimulationStep.
	
	self assert: [node1 level == (startlevel1 - 3)].
	self assert: [node2 level == (startlevel2 + 3)].
	
	connection intake: -2.
	connection output: 3.
	
	connection performSimulationStep.
	connection performSimulationStep.
	connection performSimulationStep.
	
	self assert: [node1 level == (startlevel1 - 3 + 6)].
	self assert: [node2 level == (startlevel2 + 3 + 9)].