interaction
addArrowFrom: startingNode
	"Adds Arrow from A to B on the parent morph"

	| connection |
	
	connection := STWConnection new.
	connection addArrowFrom: startingNode to: self.
	
	
	self owner addMorph: connection.