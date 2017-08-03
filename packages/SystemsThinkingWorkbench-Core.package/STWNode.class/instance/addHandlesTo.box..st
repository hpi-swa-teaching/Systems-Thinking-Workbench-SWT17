halos and balloon help
addHandlesTo: myHalo box: aBox
	"overwrite the addHandles of the standart Morph and places our own Handles.
	
	Since I am a Circle, I won't use the Rectangle and directly add my Handles to my Halo.
	The Box is only sent, to overwrite the function.
	
	A Handle is a simple Morph, who gets added onto the Halo and triggers events"
	
	| handle handleOffset  aHalo handlePoint adderCollection |
	
	aHalo := myHalo.
	handleOffset := 360 / self haloItemNumber.
	adderCollection := #(#addResizeHandlerTo: #addDeletionHandlerTo: #addMoveHandlerTo: #addInspectionHandlerTo: #addNegativeHandlerTo: #addDensityHandlerTo: #addCapacityHandlerTo:).
	
	1 to: self haloItemNumber do: [:i |
		handlePoint :=self center + (Point r: self radius + (Smalltalk at: self haloClass) handleRadius + 2 degrees: i * handleOffset).
		handle := self perform: (adderCollection at: i) with: myHalo.
		handle center: handlePoint.].
