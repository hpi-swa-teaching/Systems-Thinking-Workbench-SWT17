testing
testSuccessfulDeletion
	"Tests if a connection can be deleted."

	| node1 node2 connection simulation |
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 50@0.
	node2 := simulation addNodeAt: 50@50.
	connection := STWConnection new.
	
	connection connect: node1 with: node2.
	simulation addConnection: connection.
	simulation addMorph: connection.
	
	self assert: (connection startNode = node1 and: connection endNode = node2).
	node2 delete.
	self assert: (connection startNode = nil and: connection endNode = nil).
	self assert:(simulation nodes size = 1).