interaction
mouseMove: evt

	| done |
	
	done := false.
	(self nodes copy fusionWith: self connections)
		do: [:n |
			n lineWidth: STWSimulation normalLineWidth.
			(n containsPoint: evt cursorPoint)
				ifTrue:
					[done
						ifFalse:
							[n lineWidth: STWSimulation hoverLineWidth.
							done := true.]].].
