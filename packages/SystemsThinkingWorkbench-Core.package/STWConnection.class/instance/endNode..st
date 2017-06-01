accessing
endNode: anObject
	"Sets the end node of this connection and updates the respective nodes dependents accordingly."

	self endNode ifNotNilDo: [ :me | self endNode removeDependent: self].
	endNode := anObject.
	self endNode ifNotNilDo: [ :me | self endNode addDependent: self].