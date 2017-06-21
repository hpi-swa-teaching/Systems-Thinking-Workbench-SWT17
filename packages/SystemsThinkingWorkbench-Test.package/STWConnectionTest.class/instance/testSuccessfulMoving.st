testing
testSuccessfulMoving
	"Tests if a connection moves with a connected moving node."

	| node1 node2 connection radius1 radius2 pos1 pos2 |
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection := STWConnection new.
	radius1 := node1 radius.
	radius2 := node2 radius.
	
	connection connect: node1 with: node2.
	
	pos1 := connection segment start.
	pos2 := connection segment end.
	
	node1 center: 50@100.
	node2 center: 50@200.
	
	self assert: pos1 ~= connection segment start.
	self assert: pos2 ~= connection segment end.
