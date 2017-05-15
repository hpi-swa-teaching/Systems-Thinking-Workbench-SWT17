drawing
drawFrom: aPoint to: anotherPoint
	
	"Draws Line from A to B"
	"self halt"
	
	self setVertices: {aPoint. anotherPoint}.
	self setVerticesCount: 2.
	^ self.