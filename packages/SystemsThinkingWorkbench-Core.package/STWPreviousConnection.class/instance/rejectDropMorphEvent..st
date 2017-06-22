dropping/grapping
rejectDropMorphEvent: evt
	"If the drop was rejected just deletes me."
	
	self startNode previousConnection: nil.
	self delete.
	