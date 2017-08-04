interaction
startDrag: evt

	self previewConnection: STWPreviewConnection new.
	self owner
		addConnection: self previewConnection;
		addMorph: self previewConnection.
