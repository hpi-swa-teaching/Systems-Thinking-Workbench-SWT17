accessing
endNode: anObject
	"Sets the end node of this connection and updates the respective node's dependents accordingly."

	self endNode ifNotNil: [:node | node removeDependent: self].
	endNode := anObject.
	self endNode ifNotNil: [:node | node addDependent: self].
