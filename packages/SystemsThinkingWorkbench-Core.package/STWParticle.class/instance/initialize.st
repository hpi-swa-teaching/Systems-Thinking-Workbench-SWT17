initialization
initialize

	super initialize.
	self progress: 0;
		velocity: 1;
		setVertices: {0@0. 10@0. 10@10. 0@10};
		borderWidth: 0.