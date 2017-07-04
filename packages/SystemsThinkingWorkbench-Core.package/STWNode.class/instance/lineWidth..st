accessing
lineWidth: aNumber 
	"Provide uniform access for nodes an connections."
	
	self fillingMorph borderWidth: ((aNumber - ((self width - self fillingMorph width) / 2)) clampLow: 0).
	self borderWidth: aNumber
