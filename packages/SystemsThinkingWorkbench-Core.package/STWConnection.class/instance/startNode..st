accessing
startNode: anObject
	"Sets the end node of this connection and updates the respective node's dependents accordingly."

	self startNode ifNotNil: [ self startNode removeDependent: self].
	startNode := anObject.
	self startNode ifNotNil: [ self startNode addDependent: self].