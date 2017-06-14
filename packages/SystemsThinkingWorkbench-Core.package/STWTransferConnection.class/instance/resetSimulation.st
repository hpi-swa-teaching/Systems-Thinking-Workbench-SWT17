updating
resetSimulation

	self particles do: [ :particle | self removeMorph: particle].
	self particles removeAll.