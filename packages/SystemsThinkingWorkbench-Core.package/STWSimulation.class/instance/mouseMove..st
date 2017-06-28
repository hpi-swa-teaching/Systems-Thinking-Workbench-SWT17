interaction
mouseMove: evt

	| done |
	
	done := false.
	self connections
		do: [:c | c lineWidth: 2. c lineColor: Color black.
				(c containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [((c distanceFromBezier: evt cursorPoint - c position) < 15)
								ifTrue: [c lineWidth: 5. c lineColor: Color green darker. done := true]
								]]]
