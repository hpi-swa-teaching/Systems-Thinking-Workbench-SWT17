halos and balloon help
addStartHandleFor: aBlock color: aColor containing: aMorph

	| handle |
	
	handle := self
				createHandleFor: aBlock
				color: aColor
				containing: aMorph.
	
	self start add: handle.
	^ handle
