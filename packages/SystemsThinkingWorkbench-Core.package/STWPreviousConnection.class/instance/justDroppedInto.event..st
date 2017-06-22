dropping/grapping
justDroppedInto: aMorph event: anEvent

	aMorph createConnectionFrom: self startNode ofType: STWConnection.
	self startNode previousConnection: nil.
	self delete.
	
