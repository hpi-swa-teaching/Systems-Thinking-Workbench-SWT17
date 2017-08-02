halos and balloon help
addHandlesTo: myHalo box: aBox
	"Overwrite the addHandles of the standard morph and places our own handles.
	
	Since I am a Circle, I won't use the Rectangle and directly add my handles to my Halo.
	The box is only sent, to overwrite the function.
	
	A handle is a simple Morph, who gets added onto the Halo and triggers events."
	
	| aHalo handleRadius adderCollection handleOffset radialOffset handle |
	
	aHalo := myHalo.
	handleRadius := 15.
	adderCollection := #(#addResizeHandlerTo: #addDeletionHandleTo: #addMoveHandleTo: #addInspectionHandleTo: #addNegativeHandleTo: #addDensityHandleTo: #addCapacityHandleTo:).
	handleOffset := 360 / adderCollection size.
	
	1 to: adderCollection size 
		do: [:index |
			radialOffset := Point r: self radius + handleRadius + STWSimulation normalLineWidth degrees: index * handleOffset.
			handle := self perform: (adderCollection at: index) with: myHalo.
			handle center: self center + radialOffset.].
