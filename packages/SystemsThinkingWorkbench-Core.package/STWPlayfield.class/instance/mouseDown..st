interaction
mouseDown: evt
	"Creates a new Node at the position of mouseDown"
	
	self addNodeAt: evt cursorPoint.
	self firstClicked: nil.