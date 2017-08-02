interaction
finishPreviewConnection: evt

	self previewConnection delete.
	self previewConnection: nil.
	self owner nodes 
		do: [:node | 
			(node containsPoint: evt cursorPoint)
				ifTrue: [node createConnectionFrom: self ofType: STWConnection]]
		without: self.
