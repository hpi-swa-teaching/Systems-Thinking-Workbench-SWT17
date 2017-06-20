interaction
firstClickTimedOut: evt
	"Start the Drag with the hand grabbing a temporary arrow"
	
	| arrow |
	
	self owner draggedNode: self.	
	arrow := self drawArrowTo: evt cursorPoint.
	evt hand grabMorph: arrow.