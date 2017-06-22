interaction
firstClickTimedOut: evt
	"Start the Drag with the hand grabbing a previous connection."
	
	self owner draggedNode: self.
	self previousConnection: (STWPreviousConnection new).
	self previousConnection connect: self with: evt cursorPoint.
	self owner addMorph: self previousConnection.
	evt hand grabMorph: self previousConnection.
	