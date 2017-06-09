submorphs-add/remove
delete
	
	self changed: #deleted.
	self owner removeNode: self.
	super delete.