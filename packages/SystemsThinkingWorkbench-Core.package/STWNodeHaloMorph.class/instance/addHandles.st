construction
addHandles
	"This is an example for handles."
	
	self addMorphFront: (STWHaloButtonMorph  new
		color: Color black muchLighter;
		borderColor: Color red;
		"labelGraphic: MenuIcons smallCancelIcon;"
		target: self target;
		"actionSelector: #delete;"		
		height: (self height / 3);
		topLeft: self bottomRight;
		addMorphFront: ((ImageMorph new)image: MenuIcons smallDoItIcon);
		yourself);
		
		addMorphFront: (IconicButton new
		color: Color green muchDarker;
		borderColor: Color green;
		labelGraphic: MenuIcons smallDoItIcon;
		target: self target;
		actionSelector: #startSimulation;
		bottomLeft: self topRight;
		yourself).