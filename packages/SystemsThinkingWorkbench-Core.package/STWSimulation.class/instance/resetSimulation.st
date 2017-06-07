simulation
resetSimulation
	
	"remove al submorph except the first ever added -> start reset Buttons"
	self nodes size timesRepeat: [ (self nodes at: 1) delete]. 
	
	self resetState do:[:morphy |
							self addMorph: morphy].
								
								
	"Since i don't know how to redraw the morph, we have to stick with this. I know it's ugly. BUT IT WORKS"
	self position: (self position + (1@1)).
	self position: (self position - (1@1)).
	self simulationTime: 0.
	self stopSimulation.