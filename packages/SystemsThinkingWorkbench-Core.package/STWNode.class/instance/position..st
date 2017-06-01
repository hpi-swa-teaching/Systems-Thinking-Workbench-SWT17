geometry
position: aPosition

	super position: aPosition.
	self connections do: [ :connection | connection updatePolygon.].