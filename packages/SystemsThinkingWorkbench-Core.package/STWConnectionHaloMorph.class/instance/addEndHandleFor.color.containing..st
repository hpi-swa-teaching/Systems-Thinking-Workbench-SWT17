halos and balloon help
addEndHandleFor: aBlock color: aColor containing: aMorph

	| handle |
	
	handle := self createHandleFor: aBlock
				color: aColor
				containing: aMorph.
	
	self end add: handle.
	^ handle
