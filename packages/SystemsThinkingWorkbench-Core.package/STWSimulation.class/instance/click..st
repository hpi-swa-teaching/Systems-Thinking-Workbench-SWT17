interaction
click: evt

	| done |
	
	done := false.
	self synchronousConnections
		do: [:c | (c containsPoint: evt cursorPoint)
				ifTrue: [done ifFalse: [c addHalo.
									done := true.]]].
