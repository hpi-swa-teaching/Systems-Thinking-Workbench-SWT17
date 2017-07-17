testing
testSuccesfulPlacement
	"Tests if a connection can be placed between two nodes."
	
	| node1 node2 connection radius simulation |
	
	simulation := STWSimulation new.
	node1 := simulation addNodeAt: 50@50.
	node2 := simulation addNodeAt: 150@100.
	
	"Checks if the connection only goes from corner to corner"
	radius := node1 radius.
	connection := node2 createConnectionFrom: node1 ofType: STWConnection.
	
	self flag: #todo.
	"TODO: Finish bezier test coverage"
	self deny: connection segment start = node1 center.
	self deny: connection segment end = node2 center.
