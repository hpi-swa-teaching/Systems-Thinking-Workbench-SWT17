interaction
mouseMove: evt

	| done |
	
	done := false.
	self connections
		do: [:c | c lineWidth: 2. c lineColor: Color black.
				(c containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [((c distanceFromBezier: evt cursorPoint - c position) < self selectionDistance)
								ifTrue: [c lineWidth: STWConnection hoverThickness. c lineColor: Color green darker. done := true]
								]]]
