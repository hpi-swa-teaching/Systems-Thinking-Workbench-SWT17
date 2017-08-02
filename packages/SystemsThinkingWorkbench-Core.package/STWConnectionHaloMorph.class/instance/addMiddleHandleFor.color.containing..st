halos and balloon help
addMiddleHandleFor: aBlock color: aColor containing: aMorph

	| handle |
	
	handle := self createHandleFor: aBlock
				color: aColor
				containing: aMorph.
	
	self middle add: handle.
	^ handle
