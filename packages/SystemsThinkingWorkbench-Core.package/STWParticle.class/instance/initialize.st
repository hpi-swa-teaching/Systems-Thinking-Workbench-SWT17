initialization
initialize

	super initialize.
	self progress: 0.
	self velocity: 1.
	self setVertices: {0@0. 10@0. 10@10. 0@10}.
	self borderWidth: 0.
