testing
testSuccesfulPlacement
	"Tests if a connection can be placed between two nodes."
	
	| node1 node2 connection radius |
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection := STWConnection new.
	
	
	"Checks if the connection only goes from corner to corner"
	radius := node1 radius.
	
	connection connect: node1 with: node2.
	
	"TODO: Test bezier, but how?"
