drawing
drawCurveOn: aCanvas 

	aCanvas translateBy: self position during: [:connection | 
		self lineSegmentsDo: [:p1 :p2 |
			connection
				line: p1 rounded 
				to: p2 rounded 
				width: self lineWidth 
				color: self lineColor]].
