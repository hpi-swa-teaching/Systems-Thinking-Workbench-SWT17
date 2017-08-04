A STWConnection is the standard implementation for Connections. It transfers particles from startNode to endNode.

Structure:
instance var 	Type 			Description 
startNode: 		STWNode 		where the Connection origins
endNode:		STWNode 		where the Connection ends
intake:			number		Amount of units to take out of startNode 
output:			number		Amount of units to take add to endNode
particles:		Collection 		all Particles currently on the Connection
segment: 		Bezier2Segment 	Shape of the line drawn on the canvas
lineWidth: 		number 		-
lineColor: 		Color 			-
synchronous: 	boolean 		Whether the Connection performs transactions on a timer or whenever the startNode gets an input