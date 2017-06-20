interaction
drawArrowTo: cursorPoint 

	| startPoint arrow | 

	startPoint := self center + self radius.
	
	arrow := PolygonMorph vertices: (Array with: startPoint with: cursorPoint) color: Color black borderWidth: 2 borderColor: Color black.
	
	arrow makeForwardArrow;
		computeBounds.
	
	
	^ arrow
	
	