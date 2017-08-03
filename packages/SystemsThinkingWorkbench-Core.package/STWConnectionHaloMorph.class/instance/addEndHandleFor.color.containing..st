halos and balloon help
addEndHandleFor: aBlock color: aColor containing: aMorph

	self end add: (self
		createHandleFor: aBlock
		color: aColor
		containing: aMorph).
