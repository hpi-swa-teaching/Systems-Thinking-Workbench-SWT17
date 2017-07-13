halos and balloon help
addHandlesTo: aHalo box: aBox
	"Add control handles for input and output to the halo"

	super addHandlesTo: aHalo box: aBox.
	
	self addStartHandlesTo: aHalo.
	self addEndHandlesTo: aHalo.
