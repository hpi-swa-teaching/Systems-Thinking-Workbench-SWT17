drawing
connect: startNode with: endNode
	"Registers the connection with startNode and endNode (Observer Pattern)."
	
	self
		startNode: startNode;
		endNode: endNode;
		updatePolygon.
