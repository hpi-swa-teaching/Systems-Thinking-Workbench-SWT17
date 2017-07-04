testing
testDuplicatePrevention
	"Tests if there can be only one connection per direction between two nodes."
	
	| node1 node2 simulation connection |
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 50@0.
	node2 := simulation addNodeAt: 50@50.
	connection := STWConnection new.
	
	self assert: simulation asynchronousConnections size = 0.
	
	node1 createConnectionFrom: node2 ofType: STWTransferConnection.
	
	self assert: simulation asynchronousConnections size = 1.

	"Try to create duplicate connection"
	node1 createConnectionFrom: node2 ofType: STWTransferConnection.
	
	self assert: simulation asynchronousConnections size = 1.