interaction
doubleClick: evt
	"create a new node"

	self addNodeAt: evt cursorPoint.
	self firstClicked: nil.