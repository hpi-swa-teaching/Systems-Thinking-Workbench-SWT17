interaction
mouseMove: evt

	| done |
	
	done := false.
	(self nodes copy fusionWith: self connections)
		do: [:n | n lineWidth: STWSimulation normalThickness.
				(n containsPoint: evt cursorPoint)
				ifTrue: [done
						ifFalse: [n lineWidth: STWSimulation hoverThickness. done := true]]].