halos and balloon help
addMiddleHandleFor: aBlock color: aColor containing: aMorph
	| handle |
	handle := self
		createHandleFor: aBlock
		to: aColor
		color: aMorph
		containing: nil.
	self middle add: handle.
	^ handle