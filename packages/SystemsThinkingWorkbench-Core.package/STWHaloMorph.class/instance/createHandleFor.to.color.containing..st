construction
createHandleFor: anAction to: aReceiver color: aColor containing: aMorph
	
	| handle |
	
	handle := CircleMorph new.
	handle
		extent: STWHaloMorph handleRadius * 2 asPoint;
		color: aColor;
		on: #mouseDown send: anAction to: aReceiver.
	aMorph ifNotNil: 
		[handle addMorph: aMorph.
		aMorph center: handle center.].	
	 ^ handle
