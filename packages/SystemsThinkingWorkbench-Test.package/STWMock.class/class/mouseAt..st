mock objects
mouseAt: aPosition
	"Creates a mouse event with the given cursor Position."
	
	^ STWMock mouseAt: aPosition withHand: STWMock hand
