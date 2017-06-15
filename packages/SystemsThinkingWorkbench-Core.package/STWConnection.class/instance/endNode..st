accessing
endNode: anObject
	"Sets the end node of this connection and updates the respective node's dependents accordingly."

	self endNode ifNotNil: [self endNode removeDependent: self].
	endNode := anObject.
	self endNode ifNotNil: [self endNode addDependent: self].