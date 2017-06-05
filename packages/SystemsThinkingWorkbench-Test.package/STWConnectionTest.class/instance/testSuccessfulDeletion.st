testing
testSuccessfulDeletion
	"Tests if a connection can be deleted."

	| node1 node2 connection |
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection := STWConnection new.
	
	connection connect: node1 with: node2.
	
	self assert: (connection startNode = node1 and: connection endNode = node2).
	node2 delete.
	self assert: (connection startNode = nil and: connection endNode = nil).