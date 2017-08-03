halos and balloon help
addMiddleHandleFor: aBlock color: aColor containing: aMorph

	self middle add: (self
		createHandleFor: aBlock
		color: aColor
		containing: aMorph).
