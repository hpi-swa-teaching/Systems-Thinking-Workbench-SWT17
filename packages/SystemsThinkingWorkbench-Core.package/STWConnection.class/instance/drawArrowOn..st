drawing
drawArrowOn: aCanvas 
	"Draws the head of the connections arrow."

	| endPoint |

	aCanvas translateBy: self position during: [:c |
			endPoint := self segment end.
			"This draws the final segment of the bezier curve, as lineSegments:do: fails to encompass that part."
			c line: (self segment valueAt: 1.0 - (1.0 / (self segment length / self pixelsPerSegment))) rounded to: endPoint rounded
				width: self lineWidth color: self lineColor.
			"These draw the left and right line of the arrow head."
			c line: endPoint rounded to: self leftArrowPoint
				width: self lineWidth color: self lineColor.
			c line: endPoint rounded to: self rightArrowPoint
				width: self lineWidth color: self lineColor.].
