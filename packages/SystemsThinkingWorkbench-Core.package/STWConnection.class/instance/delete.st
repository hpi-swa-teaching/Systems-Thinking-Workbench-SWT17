submorphs-add/remove
delete
		
	self owner removeConnection: self.
	self startNode: nil;
		endNode: nil.
		
	super delete.
