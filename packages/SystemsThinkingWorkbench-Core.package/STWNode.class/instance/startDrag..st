interaction
startDrag: evt

	self draggedConnection: (STWDragConnection new).
	self draggedConnection connect: self with: evt cursorPoint.
	self owner addMorph: self draggedConnection.