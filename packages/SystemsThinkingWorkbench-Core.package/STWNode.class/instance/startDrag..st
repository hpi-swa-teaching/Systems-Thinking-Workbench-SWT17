interaction
startDrag: evt

	self previewConnection: (STWPreviewConnection new).
	self owner addConnection: self previewConnection.
	self owner addMorph: self previewConnection.
