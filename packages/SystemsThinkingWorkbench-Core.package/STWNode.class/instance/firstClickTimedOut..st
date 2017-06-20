interaction
firstClickTimedOut: evt
	"Start the Drag with the hand grabbing a temporary arrow"
	
	"evt hand grabMorph: (self createConnectionFrom: node ofType: STWTransferConnection)."
	self owner draggedNode: self.	
	evt hand grabMorph: (self drawArrowTo: evt cursorPoint).