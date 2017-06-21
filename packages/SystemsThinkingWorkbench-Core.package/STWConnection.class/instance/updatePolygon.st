updating
updatePolygon
	"Updates vertices of the connection and redraws them."
	
	| startPoint endPoint normVector |
	
	startPoint := self startNode center.
	endPoint := self endNode center.
	normVector := (endPoint - startPoint) normalized. 
	
	self setVertices: {startPoint + (normVector * (self startNode) radius). endPoint - (normVector * (self endNode) radius)}.
	self makeForwardArrow.
