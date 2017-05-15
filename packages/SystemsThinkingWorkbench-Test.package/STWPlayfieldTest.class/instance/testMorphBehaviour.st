testing
testMorphBehaviour
	"Test if a playfield can be initialized, opened within the active world and removed"
	| playfield |
	playfield := STWPlayfield new.
	playfield openInWorld.
	playfield delete.