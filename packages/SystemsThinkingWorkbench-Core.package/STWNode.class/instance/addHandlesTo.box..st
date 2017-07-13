halos and balloon help
addHandlesTo: myHalo box: aBox
	"overwrite the addHandles of the standart Morph and places our own Handles.
	
	Since I am a Circle, I won't use the Rectangle and directly add my Handles to my Halo.
	The Box is only sent, to overwrite the function.
	
	A Handle is a simple Morph, who gets added onto the Halo and triggers events"
	|handle handleOffset  aHalo fulcrum handleRadius|
	aHalo := myHalo.
	handleOffset := 360 / self haloItemNumber.
	handleRadius := 15.
	
	
	"RESIZE"
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: handleOffset).
	handle := self addResizeHandlerTo: myHalo.
	handle center: fulcrum.

	
	
	"DELETION"
	fulcrum := self center + (Point r: self radius +handleRadius +2 degrees: 2 * handleOffset).
	handle := self addDeletionHandlerTo: myHalo.
	handle center: fulcrum.


	
	"MOVING"
	fulcrum := self center + (Point r: self radius +handleRadius +2 degrees: 3 * handleOffset).
		handle := self addMoveHandlerTo: myHalo.
	handle center: fulcrum.
		
	"INSPECTION"
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 4 * handleOffset).
	handle := self addInspectionHandlerTo: myHalo.
	handle center: fulcrum.
	
	"NEGATIVE"
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 5 * handleOffset).
	handle := self addNegativeHandlerTo: myHalo.
	handle center: fulcrum.		
					
	"DENSITY"	
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 6 * handleOffset).
	handle := self addDensityHandlerTo: myHalo.
	handle center: fulcrum.				


	"CAPACITY"	
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 7 * handleOffset).
	handle := self addCapacityHandlerTo: myHalo.
	handle center: fulcrum.