interaction
mouseMove: evt

	| done |
	
	done := false.
	(self nodes copy fusionWith: self connections)
		do: [:n | n lineWidth: 2.
				(n containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [n lineWidth: STWConnection hoverThickness. done := true]]].