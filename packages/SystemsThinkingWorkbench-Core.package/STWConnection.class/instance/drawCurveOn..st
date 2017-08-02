drawing
drawCurveOn: aCanvas 

	aCanvas
		translateBy: self position during: [:c | 
			self lineSegmentsDo: [:p1 :p2 |
										 c line: p1 rounded 
										    to: p2 rounded 
										    width: self lineWidth 
										    color: self lineColor]].
