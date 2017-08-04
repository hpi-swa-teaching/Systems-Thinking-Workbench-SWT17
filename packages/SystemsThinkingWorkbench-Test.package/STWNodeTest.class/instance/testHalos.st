testing
testHalos
	"Test whether node halos work without errors."

	| simulation node |

	simulation := STWSimulation new.
	simulation openInWorld.
	node := simulation addNodeAt: 10@10.
	node addHalo.
	node delete.
	simulation delete.
