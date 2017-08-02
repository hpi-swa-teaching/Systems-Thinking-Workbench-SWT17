interaction
mouseMove: evt

	self nodes, self connections
		do: [:object | object lineWidth: STWSimulation normalLineWidth];
		
		detect: [:object | object containsPoint: evt cursorPoint]
		ifFound: [:object | object lineWidth: STWSimulation hoverLineWidth]
		ifNone: [].
