drawing
addArrowFrom: startingNode to: endNode
	"Adds Arrow from A to B on the parent morph"

	| normVector endPoint startingPoint |
	
	endPoint := endNode center.
	startingPoint := startingNode center.
	
	normVector := (endPoint - startingPoint) normalized. 
	self drawFrom: startingPoint + (normVector * endNode radius) to: endPoint - (normVector * startingNode radius).
	self makeForwardArrow.

	^ self