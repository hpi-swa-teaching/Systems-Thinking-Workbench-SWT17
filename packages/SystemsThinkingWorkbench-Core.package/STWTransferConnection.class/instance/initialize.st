initialization
initialize 

	super initialize.

	self intake: 1;
		output: 1;
		particles: Set new;
		lastStepTime: nil;
		stopStepping;
		beSynchronous.
