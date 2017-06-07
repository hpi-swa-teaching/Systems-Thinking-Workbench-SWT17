simulation
resetSimulation
	
	"remove al submorph except the first ever added -> start reset Buttons"
	1 to: (self submorphs size -2 )  do: [:counter |(self submorphs at:1) delete].	
	
	"add all nodes and connections"
	1 to: (self resetState size)do:[:counter |
									self addMorph: (self resetState at: counter). ].
								
								
	"Since i don't know how to redraw the morph, we have to stick with this. I know it's ugly. BUT IT WORKS"
	self position: (self position + (1@1)).
	self position: (self position - (1@1)).
	self simulationTime: 0.
	self stopSimulation.