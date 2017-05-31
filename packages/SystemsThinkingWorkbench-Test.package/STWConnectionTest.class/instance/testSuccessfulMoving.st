testing
testSuccessfulMoving

	| node1 node2 connection radius1 radius2 |
	
	node1 := (STWNode new) center: 50@0.
	node2 := (STWNode new) center: 50@50.
	connection := STWConnection new.
	radius1 := node1 radius.
	radius2 := node2 radius.
	
	connection connect: node1 with: node2.
	
	node1 center: 50@100.
	node2 center: 50@0.
	self assert: [connection vertices = {50@(100 - radius1). 50@radius2}].