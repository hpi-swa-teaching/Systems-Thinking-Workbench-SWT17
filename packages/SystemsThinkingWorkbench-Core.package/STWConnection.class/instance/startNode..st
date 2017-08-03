accessing
startNode: anObject
	"Sets the end node of this connection and updates the respective node's dependents accordingly."

	self startNode ifNotNil: [:node | node removeDependent: self].
	startNode := anObject.
	self startNode ifNotNil: [:node | node addDependent: self].
