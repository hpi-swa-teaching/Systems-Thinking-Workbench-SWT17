interaction
mouseDown: evt
	"Creates a new node at the position of mouseDown."
	
	self addNodeAt: evt cursorPoint.
	self firstClicked: nil.