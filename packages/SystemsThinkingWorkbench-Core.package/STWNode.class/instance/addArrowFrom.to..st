interaction
addArrowFrom: startingNode to: endNode 
	"Adds Arrow from A to B on the parent morph"

	| connection normVector endPoint startingPoint |
	
	endPoint := endNode center.
	startingPoint := startingNode center.
	connection := STWConnection new.
	
	normVector := (endPoint - startingPoint) / (((endPoint - startingPoint) dotProduct: (endPoint - startingPoint)) sqrt ).
	connection verticesAt: 1 put: startingPoint + (normVector * endNode extent x / 2).
	connection verticesAt: 2 put: endPoint - (normVector * startingNode extent x / 2).
	connection makeForwardArrow.
	self owner addMorph: connection.
