initialization
initialize 

	super initialize.

	self intake: 1.
	self output: 1.
	self particles: Set new.
	self lastStepTime: nil.
	self stopStepping.
