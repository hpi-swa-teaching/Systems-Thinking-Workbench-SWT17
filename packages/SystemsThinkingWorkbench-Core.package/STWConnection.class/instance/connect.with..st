drawing
connect: startNode with: endNode
	"Registers the connection with startNode and endNode (Observer Pattern)."
	
	self startNode: startNode.
	self endNode: endNode.
	startNode addDependent: self.
	endNode addDependent: self.
	
	self updatePolygon.