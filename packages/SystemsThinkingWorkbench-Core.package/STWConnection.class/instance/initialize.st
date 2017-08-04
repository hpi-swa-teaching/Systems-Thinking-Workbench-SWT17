initialization
initialize

	super initialize.
	self
		lineColor: Color black;
		lineWidth: STWSimulation normalLineWidth;
		color: Color transparent;
		particles: Set new;
		intake: 1;
		output: 1;
		particles: Set new;
		stopStepping;
		beSynchronous.
