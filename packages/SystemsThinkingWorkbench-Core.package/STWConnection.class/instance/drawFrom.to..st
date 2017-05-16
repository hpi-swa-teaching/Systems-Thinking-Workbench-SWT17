drawing
drawFrom: aPoint to: anotherPoint
	
	"Draws Line from A to B"
	
	self setVertices: {aPoint. anotherPoint}.
	
	"only avaiable in trunk"
	"self setVerticesCount: 2."
	^ self.