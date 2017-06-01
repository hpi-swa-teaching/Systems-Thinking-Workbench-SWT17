testing
testSuccesfulNodeLifecycle
	"Checks if a node can be placed in the playfield by clicking."

	| playfield |
	
	playfield := STWPlayfield new.
	self assert: [(playfield addNodeAt: 100@100) center = (100@100)].