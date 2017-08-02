testing
testHalos
	"Test whether node halos work correctly"

	| simulation node |

	simulation := STWSimulation new.
	simulation openInWorld.
	node := simulation addNodeAt: 10@10.
	node addHalo.
	node delete.
	simulation delete.
