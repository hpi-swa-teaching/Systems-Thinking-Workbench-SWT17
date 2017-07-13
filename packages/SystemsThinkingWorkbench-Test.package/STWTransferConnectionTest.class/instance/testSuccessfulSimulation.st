testing
testSuccessfulSimulation
	"Tests if a TransferConnection takes x from one node and transfers y to another node."

	| node1 node2 connection startlevel1 startlevel2 simulation |
	
  	startlevel1 := 15.
  	startlevel2 := 30.
	
	simulation := STWSimulation new.
	node1 := STWNode new
		center: 150 @ 50;
		level: startlevel1.
	node2 := STWNode new
		center: 500 @ 150;
		level: startlevel2.
	simulation addMorph: node1.
	simulation addNode: node1.
	simulation addMorph: node2.
	simulation addNode: node2.
	simulation startSimulation.
	connection := node2 createConnectionFrom: node1 ofType: STWTransferConnection.
	self assert: [ node1 level == startlevel1 ].
	self assert: [ node2 level == startlevel2 ].
  	connection intake: -2.
  	connection output: 7.
	
	self test: connection steps: 5 in: simulation.
	simulation delete.
