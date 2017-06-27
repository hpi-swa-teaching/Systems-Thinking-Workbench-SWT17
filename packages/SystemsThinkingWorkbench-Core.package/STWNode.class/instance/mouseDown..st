interaction
mouseDown: evt
	"Draws an arrow from first clicked node to the second clicked node."
	self flag: #ToDo. "Wollen wir das mit dem Drag-Selector von waitForClicksOrDrags (4tes Element) machen? Nicht verzagen, Potti fragen."

	 evt hand
		waitForClicksOrDrag: self
		event: evt
		selectors: {#click:. #doubleClick:. nil. #startDrag:.}
		threshold: 5.

