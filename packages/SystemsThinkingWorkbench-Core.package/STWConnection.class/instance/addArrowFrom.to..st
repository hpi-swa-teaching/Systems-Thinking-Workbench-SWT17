drawing
addArrowFrom: startingNode to: endNode
	"Adds Arrow from A to B on the parent morph"

	| normVector endPoint startingPoint |
	
	endPoint := endNode center.
	startingPoint := startingNode center.
	
	normVector := (endPoint - startingPoint) / (((endPoint - startingPoint) dotProduct: (endPoint - startingPoint)) sqrt ).
	self drawFrom: startingPoint + (normVector * endNode extent x / 2)  to: endPoint - (normVector * startingNode extent x / 2). 
	self makeForwardArrow.

	^ self.