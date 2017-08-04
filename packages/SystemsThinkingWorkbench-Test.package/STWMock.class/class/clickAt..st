mock objects
clickAt: aPoint
	"Creates a mock click event with the given position."
	
	^ STWMock new
		methods at: #cursorPoint put: aPoint;
		yourself
