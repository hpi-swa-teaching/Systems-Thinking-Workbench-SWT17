testing
testResetWithoutSimulation

	| node1 node2 connection |
	
	node1 := STWNode new.
	node2 := STWNode new.
	
	"Set it to default values again just to make sure"
	node1 level: 42.
	node1 backupLevel: 42.
	
	connection := STWTransferConnection new.
	connection connect: node1 with: node2.
	
	connection performSimulationStep.
	self assert: [node1 level ~= node1 backupLevel].
	
	node1 resetLevel.
	
	self assert: [node1 level = 42].
