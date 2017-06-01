accessing
startNode: anObject
	"Sets the end node of this connection and updates the respective nodes dependents accordingly."

	self startNode ifNotNilDo: [ :me | self startNode removeDependent: self].
	startNode := anObject.
	self startNode ifNotNilDo: [ :me | self startNode addDependent: self].