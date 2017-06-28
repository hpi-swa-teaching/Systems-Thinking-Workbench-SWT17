construction
addHandles
	"This is an example for handles."
	
	self addMorphFront: ((STWHaloMorph createHandleFor:  self destruction 
								color:  Color red
								containing: (MenuIcons smallDeleteIconContents asMorph)
								on: self target )
										
								"topLeft: self worldBoundsForHalo bottomRight") .
		
		
