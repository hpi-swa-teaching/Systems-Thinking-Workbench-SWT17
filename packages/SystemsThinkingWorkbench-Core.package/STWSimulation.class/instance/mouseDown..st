interaction
mouseDown: evt
	"Creates a new node at the position of mouseDown."
	
	evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: {#click:. #doubleClick:. #firstClickTimedOut:. nil}
		threshold: 5.
