initialization
initialize
	
	| size |
	
	size := STWParticle size.
	super initialize.
	self progress: 0;
		velocity: STWParticle velocity;
		setVertices: {0@0. size@0. size@size. 0@size};
		borderWidth: 0.
