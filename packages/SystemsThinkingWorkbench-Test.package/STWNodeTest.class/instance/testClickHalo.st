testing
testClickHalo
	"Test whether node halos are added on click."

	| simulation node |

	simulation := STWSimulation new.
	simulation openInWorld.
	node := simulation addNodeAt: 10@10.
	node click: (STWMock mouseAt: node center).
	self assert: node halo notNil.
	node delete.
	simulation delete.
