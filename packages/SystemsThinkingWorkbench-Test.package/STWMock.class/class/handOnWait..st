mock objects
handOnWait: aBlock
	"Creates a mock HandMorph which calls the given Block when someone waits for clicks."
	
	^ STWMock withMethods: {
		#waitForClicksOrDrag:event:  -> aBlock
	}
