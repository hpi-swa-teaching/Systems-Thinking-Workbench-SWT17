testing
testHalos
	"Test whether connection halos work correctly"

	| node1 node2 connection simulation |
	simulation := STWSimulation new.
	simulation openInWorld.
	node1 := simulation addNodeAt: 50@0.
	node2 := simulation addNodeAt: 50@50.
	connection := node2 createConnectionFrom: node1 ofType: STWConnection.
	connection addHalo.
	connection delete.
	simulation delete.
