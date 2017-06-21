submorphs-add/remove
delete

	self owner removeConnection: self.
	self startNode: nil.
	self endNode: nil.
	super delete.
