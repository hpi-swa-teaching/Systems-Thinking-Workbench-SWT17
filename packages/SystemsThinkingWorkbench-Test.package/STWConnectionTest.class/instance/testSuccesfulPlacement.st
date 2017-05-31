testing
testSuccesfulPlacement
	"tests if a Connection can be placed between two Nodes."
	
	| node1 node2 connection radius |
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection := STWConnection new.
	
	
	"Check if the Connection only goes from corner to corner"
	radius := node1 radius.
	
	connection connect: node1 with: node2.
	
	self assert: (connection vertices = {50@radius. 50@(50-radius)}).
	
