updating
resetSimulation

	self particles
		do: [:particle | self removeMorph: particle];
		removeAll.
