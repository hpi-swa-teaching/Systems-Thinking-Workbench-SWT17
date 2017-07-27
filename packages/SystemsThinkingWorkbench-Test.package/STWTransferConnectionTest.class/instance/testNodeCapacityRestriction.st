testing
testNodeCapacityRestriction
	"Tests if a TransferConnection only takes intake from its startNode if its endNode can hold output and its startNode can provide intake."

	| node1 node2 connection startlevel1 startlevel2 simulation |

  	startlevel1 := 10.
  	startlevel2 := 10.

	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 150@50.
	node1 level: startlevel1.
	node2 := simulation addNodeAt: 500@150.
	node2 level: startlevel2.
	connection := node2 createConnectionFrom: node1 ofType: STWTransferConnection.

  	connection intake: startlevel1 + 1.
  	connection output: 1.

	node1 prohibitNegative.
	simulation stepSimulation.
	self assert: startlevel1 equals: node1 level.
	self assert: connection particles isEmpty.
	
	node1 permitNegative.
	node2 capacity: startlevel2.
	simulation stepSimulation.
	self assert: startlevel1 equals: node1 level.
	self assert: connection particles isEmpty.

	simulation delete.
