mock objects
hand
	"Creates a mock HandMorph which does nothing."
	
	^ STWMock withMethods: {
		#waitForClicksOrDrag:event:  -> nil
	}
