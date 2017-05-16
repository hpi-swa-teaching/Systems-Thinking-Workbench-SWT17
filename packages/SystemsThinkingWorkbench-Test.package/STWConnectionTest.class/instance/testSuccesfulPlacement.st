testing
testSuccesfulPlacement
	"tests if a Connection can be placed between two Nodes."
	
	| node1 node2 connection radius |
	
	"Check setting of vertices"
	connection := STWConnection new.
	connection drawFrom: 25@25  to: 50@50.
	self assert: (connection vertices = {25@25. 50@50}).
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	
	
	"Check if the Connection only goes from corner to corner"
	radius := node1 extent x / 2.
	
	connection addArrowFrom: node1 to: node2.
	self assert: (connection vertices = {50@radius. 50@(50-radius)}).
	
