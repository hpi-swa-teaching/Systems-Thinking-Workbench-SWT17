interaction
mouseDown: evt

	"Creates a new Node at the position of mouseDown"
	self addMorph: (STWNode new) centeredNear: evt cursorPoint.