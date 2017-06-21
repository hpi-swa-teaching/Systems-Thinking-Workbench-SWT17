interaction
mouseDown: evt
	"Wait for further click events"
	
	evt hand waitForClicksOrDrag: self event: evt.
