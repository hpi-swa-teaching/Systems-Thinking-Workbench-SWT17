drawing
createHandleFor: aBlock color: aColor containing: aMorph
	
	^ self createHandleFor: #value 
		to: aBlock
		color: aColor
		containing: aMorph
