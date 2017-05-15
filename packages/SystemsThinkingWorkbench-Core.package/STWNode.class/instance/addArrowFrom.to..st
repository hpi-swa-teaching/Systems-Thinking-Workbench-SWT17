interaction
addArrowFrom: startingNode to: endNode 
	"Adds Arrow from A to B on the parent morph"

	| connection |
	
	connection := STWConnection new.
	connection addArrowFrom: startingNode to: endNode.
	
	
	self owner addMorph: connection.