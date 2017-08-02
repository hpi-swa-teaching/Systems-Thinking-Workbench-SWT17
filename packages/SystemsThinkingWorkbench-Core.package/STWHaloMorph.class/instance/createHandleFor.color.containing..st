drawing
createHandleFor: aBlock color: aColor containing: aMorph
	
	| handle |
	handle := CircleMorph new.
	handle
		height: self handleRadius * 2;
		color: aColor;
		on: #mouseDown send: #value to: aBlock.
	
	aMorph ifNotNil:
		[handle addMorph: aMorph.
		aMorph center: handle center.].
			
	 ^ handle
