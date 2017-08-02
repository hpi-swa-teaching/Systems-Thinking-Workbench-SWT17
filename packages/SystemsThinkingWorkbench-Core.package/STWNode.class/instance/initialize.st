initialization
initialize
	"Creates a node with a random color."
	
	| verticalOffset |
	
	super initialize.    
	verticalOffset := 0@(self height / 4).
	nameMorph := (STWStringMorph new offset: 0 - verticalOffset).
	levelMorph := (STWLevelMorph new offset: verticalOffset).
	fillingMorph := (((CircleMorph new) color: Color random) center: self center) borderWidth: 0.
	self 
		addMorph: self fillingMorph;
		addMorph: self levelMorph;
		addMorph: self nameMorph;
		name: STWNode initialName;
		capacity: nil;
		color: Color transparent.
	self levelMorph contents: STWNode initialLevel asString.
	self 
		density: STWNode initialDensity;
		backupLevel: self level;
		lineWidth: STWSimulation normalLineWidth;
		permitNegative;
		updateFilling;
		extent: STWNode initialDiameter asPoint.
