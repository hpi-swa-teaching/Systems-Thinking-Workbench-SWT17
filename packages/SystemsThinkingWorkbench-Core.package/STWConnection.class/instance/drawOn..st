drawing
drawOn: aCanvas 

	super drawOn: aCanvas.
	self segment ifNotNil: [ self segment hasZeroLength ifFalse: [self drawCurveOn: aCanvas; drawArrowOn: aCanvas]].