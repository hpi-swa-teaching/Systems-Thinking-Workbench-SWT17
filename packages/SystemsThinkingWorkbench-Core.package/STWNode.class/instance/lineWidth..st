accessing
lineWidth: aNumber 
	"Provide uniform access for nodes an connections."
	aNumber == STWSimulation hoverLineWidth
		ifTrue: [
		((self width - self fillingMorph width < (STWSimulation hoverLineWidth * 2)) and: (self borderWidth ~= STWSimulation hoverLineWidth))
			ifTrue: [self fillingMorph borderWidth: STWSimulation hoverLineWidth].]
		ifFalse: [self fillingMorph borderWidth: 0].
	self borderWidth: aNumber