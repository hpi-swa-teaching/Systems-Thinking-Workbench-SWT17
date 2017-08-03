halos and balloon help
addHandlesTo: myHalo box: aBox
	"Overwrite the addHandles of the standard morph and places our own handles.
	
	Since I am a Circle, I won't use the Rectangle and directly add my handles to my Halo.
	The box is only sent, to overwrite the function.
	
	A handle is a simple Morph, who gets added onto the Halo and triggers events."
	
<<<<<<< HEAD
	| handle handleOffset  aHalo handlePoint adderCollection |
	
	aHalo := myHalo.
	handleOffset := 360 / self haloItemNumber.
	adderCollection := #(#addResizeHandlerTo: #addDeletionHandlerTo: #addMoveHandlerTo: #addInspectionHandlerTo: #addNegativeHandlerTo: #addDensityHandlerTo: #addCapacityHandlerTo:).
	
	1 to: self haloItemNumber do: [:i |
		handlePoint :=self center + (Point r: self radius + (Smalltalk at: self haloClass) handleRadius + 2 degrees: i * handleOffset).
		handle := self perform: (adderCollection at: i) with: myHalo.
		handle center: handlePoint.].
=======
	| handleRadius adderCollection handleOffset radialOffset |
	
	handleRadius := 15.
	adderCollection := #(#addResizeHandlerTo:centeredAt: #addDeletionHandleTo:centeredAt: #addMoveHandleTo:centeredAt: #addInspectionHandleTo:centeredAt: #addNegativeHandleTo:centeredAt: #addDensityHandleTo:centeredAt: #addCapacityHandleTo:centeredAt:).
	handleOffset := 360 / adderCollection size.
	
	1 to: adderCollection size 
		do: [:index |
			radialOffset := Point r: self radius + handleRadius + STWSimulation normalLineWidth degrees: index * handleOffset.
			self
				perform: (adderCollection at: index)
				with: myHalo
				with: self center + radialOffset.].
>>>>>>> develop
