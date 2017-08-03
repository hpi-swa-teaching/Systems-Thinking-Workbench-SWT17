drawing
drawArrowOn: aCanvas 
	"Draws the head of the connections arrow."

	| endPoint |

	aCanvas translateBy: self position
		during: [:canvas |
			endPoint := self segment end.
			"This draws the final segment of the bezier curve, as lineSegments:do: fails to encompass that part."
			canvas
				line: (self segment valueAt: 1.0 - (1.0 / (self segment length / STWConnection pixelsPerSegment))) rounded
				to: endPoint rounded
				width: self lineWidth
				color: self lineColor.
			"These draw the left and right line of the arrow head."
			canvas
				line: endPoint rounded
				to: self leftArrowPoint
				width: self lineWidth
				color: self lineColor.
			canvas
				line: endPoint rounded
				to: self rightArrowPoint
				width: self lineWidth
				color: self lineColor.].
