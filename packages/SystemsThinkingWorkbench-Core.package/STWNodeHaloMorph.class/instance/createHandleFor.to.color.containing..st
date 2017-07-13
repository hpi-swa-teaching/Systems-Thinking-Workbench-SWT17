construction
createHandleFor: aAction to: aReceiver color: aColor containing: aMorph
	
	| handle |
	handle := CircleMorph new.
	handle height: self handleRadius * 2;
		color: aColor;
		on: #mouseDown send: aAction to: aReceiver.
	
	aMorph ifNotNil: [ handle addMorph: aMorph.
		aMorph center: handle center.].
			
	 ^ handle
