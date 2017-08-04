testing
testClickHalo
	"Test whether connection halos are added on click."

	| node1 node2 connection simulation |
	
	simulation := STWSimulation new.
	simulation openInWorld.
	node1 := simulation addNodeAt: 50@0.
	node2 := simulation addNodeAt: 50@50.
	connection := node2 createConnectionFrom: node1.
	connection click: (STWMock mouseAt: connection segment start).
	self assert: connection halo notNil.
	connection delete.
	simulation delete.
