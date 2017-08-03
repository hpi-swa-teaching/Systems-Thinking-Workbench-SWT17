testing
testDuplicatePrevention
	"Tests if there can be only one connection per direction between two nodes."
	
	| node1 node2 simulation |
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 50@0.
	node2 := simulation addNodeAt: 50@50.
	
	self assert: simulation connections isEmpty.
	node1 createConnectionFrom: node2.
	self assert: 1 equals: simulation connections size.

	"Try to create duplicate connection"
	node1 createConnectionFrom: node2.
	self assert: 1 equals: simulation connections size.
