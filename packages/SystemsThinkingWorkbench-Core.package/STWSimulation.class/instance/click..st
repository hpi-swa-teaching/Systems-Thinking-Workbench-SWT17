interaction
click: evt

	| done |
	
	done := false.
	self connections
		do: [:c | (c containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [((c distanceFromBezier: evt cursorPoint - c position) < 15)
								ifTrue: [c addHalo.
									done := true]]]]
