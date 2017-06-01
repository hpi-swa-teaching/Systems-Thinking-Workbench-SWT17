testing
testSuccesfulNodeLifecycle
	"Checks if a Node can be Placed in the Playfield by clicking"

	| playfield |
	playfield := STWPlayfield new.
	self assert: [(playfield addNodeAt: 100@100) center = (100@100)].