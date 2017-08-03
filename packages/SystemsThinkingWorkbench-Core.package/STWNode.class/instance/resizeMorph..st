updating
resizeMorph: evt

	| radius circlePoint squarePoint offset handle |
	
	radius := self height / 2.
	circlePoint := (2 sqrt * radius / 2) asPoint.
	squarePoint := radius asPoint.
	offset := circlePoint - squarePoint.

	handle := HandleMorph new 
		forEachPointDo: [:newPoint | 
			self extent: (self griddedPoint: newPoint - offset) - self bounds topLeft]; 
		yourself.
	evt hand attachMorph: handle.
	handle startStepping.
