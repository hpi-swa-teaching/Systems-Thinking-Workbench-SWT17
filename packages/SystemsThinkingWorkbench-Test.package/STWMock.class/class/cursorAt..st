mock objects
cursorAt: aPoint
	"Creates a mock click event with the given position."
	
	| mock |
	
	mock := STWMock new.
	mock methods at: #cursorPoint put: aPoint.
	^ mock
