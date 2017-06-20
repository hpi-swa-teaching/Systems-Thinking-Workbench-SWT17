construction
addHandles
	"This is an example for handles."
	
	self addMorphFront: (IconicButton new
		color: Color red muchLighter;
		borderColor: Color red;
		labelGraphic: MenuIcons smallCancelIcon;
		target: self target;
		actionSelector: #delete;
		bottomRight: self topLeft;
		yourself);
		addMorphFront: (IconicButton new
		color: Color green muchDarker;
		borderColor: Color green;
		labelGraphic: MenuIcons smallDoItIcon;
		target: self target;
		actionSelector: #startSimulation;
		bottomLeft: self topRight;
		yourself).