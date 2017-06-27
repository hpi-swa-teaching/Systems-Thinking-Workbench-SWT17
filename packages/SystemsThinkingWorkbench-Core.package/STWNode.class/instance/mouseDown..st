interaction
mouseDown: evt
	"Waits for Drag-Event, ignores all other click Events."

	 evt hand
		waitForClicksOrDrag: self
		event: evt.
