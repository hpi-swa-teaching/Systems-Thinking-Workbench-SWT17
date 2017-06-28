interaction
startDrag: evt

	self draggedConnection: (STWDragConnection new).
	self owner addConnection: self draggedConnection.
	self owner addMorph: self draggedConnection.
