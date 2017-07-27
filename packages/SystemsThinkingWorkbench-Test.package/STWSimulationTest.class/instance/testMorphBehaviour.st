testing
testMorphBehaviour
	"Tests if a playfield can be initialized, opened within the active world and removed."
	
	| playfield |
	
	playfield := STWSimulation new.
	playfield openInWorld.
	playfield delete.
