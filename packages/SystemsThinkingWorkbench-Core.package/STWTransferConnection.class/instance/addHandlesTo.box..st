halos and balloon help
addHandlesTo: aHalo box: aBox

	super addHandlesTo: aHalo box: aBox.
	
	self addStartHandlesTo: aHalo.
	self addEndHandlesTo: aHalo.