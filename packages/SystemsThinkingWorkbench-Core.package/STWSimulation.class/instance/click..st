interaction
click: evt

	| done |
	
	done := false.
	self connections
		do: [:c | (c containsPoint: evt cursorPoint)
				ifTrue: [done ifFalse: [c addHalo.
									done := true.]]].
