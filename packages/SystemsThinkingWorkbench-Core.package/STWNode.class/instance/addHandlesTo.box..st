halos and balloon help
addHandlesTo: aHalo box: aBox
	"overwrite the addHandles of the standart Morph and places our own Handles.
	
	A Handle is a simple Morph, who gets added onto the Halo and triggers events"
	|handleOffset fulcrum handleRadius|
	
	handleOffset := 360 / self haloItemNumber.
	handleRadius := 20.
	
		fulcrum := self center +(Point r: self radius +handleRadius +2 degrees: handleOffset).
	self addMaxCapacityHandlerTo:  aHalo on: fulcrum  withRadius: handleRadius.
	
	fulcrum := self center + (Point r: self radius + handleRadius +2  degrees: 2*handleOffset).
	self addDeletionHandlerTo: aHalo on: fulcrum withRadius: handleRadius. 								
													
	fulcrum := self center + (Point r: self radius +handleRadius +2 degrees: 3* handleOffset).
	self addMoveHandlerTo: aHalo on: fulcrum withRadius: handleRadius.
									
									
	fulcrum :=self center + (Point r: self radius +handleRadius +2 degrees: 4 * handleOffset).
	self addNegativeHandlerTo: aHalo on: fulcrum  withRadius: handleRadius.
	
