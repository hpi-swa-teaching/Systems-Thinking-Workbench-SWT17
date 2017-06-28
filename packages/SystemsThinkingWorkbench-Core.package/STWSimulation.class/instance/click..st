interaction
click: evt

	| done |
	
	done := false.
	self connections
		do: [:c | (c containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [((c distanceFromBezier: evt cursorPoint - c position) < self selectionDistance)
								ifTrue: [c addHalo.
									done := true]]]]
