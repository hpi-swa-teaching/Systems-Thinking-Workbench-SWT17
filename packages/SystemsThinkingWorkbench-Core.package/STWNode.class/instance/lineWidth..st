accessing
lineWidth: aNumber 
	"Provide uniform access for nodes an connections."
	aNumber == STWSimulation hoverLineWidth
		ifTrue: [
		((self width - self fillingMorph width < (STWSimulation hoverLineWidth * 2)) and: (self borderWidth ~= STWSimulation hoverLineWidth))
			ifTrue: [self fillingMorph extent: (self width - (STWSimulation hoverLineWidth * 2))@(self width - (STWSimulation hoverLineWidth * 2)).
				self fillingMorph center: self center].]
		ifFalse: [self updateFilling].
	self borderWidth: aNumber