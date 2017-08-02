interaction
finishPreviewConnection: evt

	self previewConnection delete.
	self previewConnection: nil.
	self owner nodes do: [:n | (n containsPoint: evt cursorPoint) 
			ifTrue: [n createConnectionFrom: self ofType: STWConnection] ] 
		without: self.
