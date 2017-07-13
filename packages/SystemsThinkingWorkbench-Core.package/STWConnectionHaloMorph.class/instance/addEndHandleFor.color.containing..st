halos and balloon help
addEndHandleFor: aBlock color: aColor containing: aMorph
	| handle |
	handle := self
		createHandleFor: aBlock
		to: aColor
		color: aMorph
		containing: nil.
	self end add: handle.
	^ handle
