interaction
mouseDown: evt
	"Waits for drag event, ignores all other click events."

	 evt hand
		waitForClicksOrDrag: self
		event: evt.
