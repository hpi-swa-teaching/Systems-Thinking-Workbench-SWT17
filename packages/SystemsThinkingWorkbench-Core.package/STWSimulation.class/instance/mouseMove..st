interaction
mouseMove: evt

	| done |
	
	done := false.
	self nodes
		do: [:n | n borderWidth: 2.
				(n containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [n borderWidth: STWConnection hoverThickness. done := true]]].
	self connections
		do: [:c | c lineWidth: 2.
				(c containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [((c distanceFromBezier: evt cursorPoint - c position) < self selectionDistance)
								ifTrue: [c lineWidth: STWConnection hoverThickness. done := true]
								]]].