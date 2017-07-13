halos and balloon help
addStartHandleFor: aBlock color: aColor containing: aMorph
	| handle |
	handle := self
		createHandleFor: aBlock
		to: aColor
		color: aMorph
		containing: nil.
	self start add: handle.
	^ handle