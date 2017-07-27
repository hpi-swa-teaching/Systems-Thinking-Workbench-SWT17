testing
testSuccessfulConnectionDeletion
	"Tests if a node can be deleted."

	| node1 node2 connection simulation |
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 50@0.
	node2 := simulation addNodeAt: 50@50.
	connection := node2 createConnectionFrom: node1 ofType: STWTransferConnection.
	
	self assert: node1 equals: connection startNode.
	self assert: node2 equals: connection endNode.
	connection delete.
	self assert: nil equals: connection startNode.
	self assert: nil equals: connection endNode.
	self assert: simulation connections isEmpty.
	self assert: 2 equals: simulation nodes size.
