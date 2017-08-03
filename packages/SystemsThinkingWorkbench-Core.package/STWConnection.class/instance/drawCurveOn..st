drawing
drawCurveOn: aCanvas 

	aCanvas translateBy: self position
		during: [:canvas | 
			self lineSegmentsDo: [:p1 :p2 |
				canvas
					line: p1 rounded 
					to: p2 rounded 
					width: self lineWidth 
					color: self lineColor]].
