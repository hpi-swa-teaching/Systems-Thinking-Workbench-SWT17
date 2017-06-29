construction
addHandles
	"This is an example for handles."
	
	
	"Deletion"
	self addMorphFront: ((self createHandleFor:  self destruction 
								color:  Color red
								containing: (MenuIcons smallDeleteIconContents asMorph)
								on: self target )
								height: 15;
								topLeft: self worldBoundsForHalo bottomRight) .
		
	"Movement"
	self addMorphFront: ((self createHandleFor:  self moving
								color:  Color red
								containing: (MenuIcons smallRemoteOpenIcon asMorph)
								on: self target )
										
								bottomLeft: self worldBoundsForHalo bottomRight) .
		
	
	"Sticky"
	self addMorphFront: ((self createHandleFor:  self destruction 
								color:  Color red
								containing: (MenuIcons smallDeleteIconContents asMorph)
								on: self target )
										
								"topLeft: self worldBoundsForHalo bottomRight") .
		
	"Negative"
	self addMorphFront: ((self createHandleFor:  self destruction 
								color:  Color red
								containing: (MenuIcons smallDeleteIconContents asMorph)
								on: self target )
										
								"topLeft: self worldBoundsForHalo bottomRight") .
		
	"Maximum Capacity"
	self addMorphFront: ((self createHandleFor:  self destruction 
								color:  Color red
								containing: (MenuIcons smallDeleteIconContents asMorph)
								on: self target )
										
								"topLeft: self worldBoundsForHalo bottomRight") .
		
	"density"
	self addMorphFront: ((self createHandleFor:  self destruction 
								color:  Color red
								containing: (MenuIcons smallDeleteIconContents asMorph)
								on: self target )
										
								"topLeft: self worldBoundsForHalo bottomRight Unmatched comment quote ->") .
		
		
