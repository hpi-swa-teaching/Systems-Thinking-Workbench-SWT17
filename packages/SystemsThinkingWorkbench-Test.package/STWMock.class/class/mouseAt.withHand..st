mock objects
mouseAt: aPosition withHand: aHand
	"Creates a mouse event with the given cursor position and Hand."
	
	^ STWMock withMethods: {
		#cursorPoint -> aPosition.
		#hand -> aHand
	}
