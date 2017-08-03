halos and balloon help
addStartHandleFor: aBlock color: aColor containing: aMorph
	
	self start add: (self
		createHandleFor: aBlock
		color: aColor
		containing: aMorph).
