interaction
mouseMove: evt

	| done |
	
	done := false.
	self nodes
		do: [:n | n borderWidth: 2. n borderColor: Color black.
				(n containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [n borderWidth: STWConnection hoverThickness. n borderColor: Color green darker. done := true]]].
	self connections
		do: [:c | c lineWidth: 2. c lineColor: Color black.
				(c containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [((c distanceFromBezier: evt cursorPoint - c position) < self selectionDistance)
								ifTrue: [c lineWidth: STWConnection hoverThickness. c lineColor: Color green darker. done := true]
								]]].