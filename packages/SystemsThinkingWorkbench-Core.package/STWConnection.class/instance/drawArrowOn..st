drawing
drawArrowOn: aCanvas 

	| v |

	aCanvas
		translateBy: self position during: [:c |
			v := self segment end.
			c line: (self segment valueAt: 1.0 - (1.0 / (self segment length / self pixelsPerSegment))) rounded to: v rounded
				width: self lineWidth color: self lineColor.
			c line: v rounded to: self leftArrowPoint
				width: self lineWidth color: self lineColor.
			c line: v rounded to: self rightArrowPoint
				width: self lineWidth color: self lineColor].
