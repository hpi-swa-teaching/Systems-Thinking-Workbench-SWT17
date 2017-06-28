construction
addHandles
	"This is an example for handles."
	
	self addMorphFront: ((STWHaloMorph createHandleFor:  [:target | target perform: #delete]
										 color:  Color red
										containing: (MenuIcons smallDeleteIconContents asMorph)
										on: self target )
										
									topLeft: self worldBoundsForHalo bottomRight) .
		
		
		"
		addMorphFront: (IconicButton new
		color: Color green muchDarker;
		borderColor: Color green;
		labelGraphic: MenuIcons smallDoItIcon;
		target: self target;
		actionSelector: #startSimulation;
		bottomLeft: self topRight;
		yourself).
		"