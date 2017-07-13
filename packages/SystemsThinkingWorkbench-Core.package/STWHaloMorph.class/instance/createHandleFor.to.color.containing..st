drawing
createHandleFor: aBlock to: aColor color: aMorph containing: anObject
	
	| handle |
	handle := CircleMorph new.
	handle height: self handleRadius * 2;
		color: aColor;
		on: #mouseDown send: #value to: aBlock.
	
	aMorph ifNotNil: [ handle addMorph: aMorph.
		aMorph center: handle center.].
			
	 ^ handle
