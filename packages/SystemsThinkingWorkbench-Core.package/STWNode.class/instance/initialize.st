initialization
initialize
	"Creates a node with a random color."
	"Sets node's level to 42."
	
	| verticalOffset |
	
	super initialize.
	self color: Color transparent.
    
	verticalOffset := 0 @ (self height / 4).
	nameMorph := ((STWStringMorph new contents: '???') offset: 0 - verticalOffset).
	levelMorph := ((STWLevelMorph new contents: 42 asString) offset: verticalOffset).
	fillingMorph := (((CircleMorph new) color: Color random) center: self center) borderWidth: 0.
	
	self density: 1 / 100.
	self capacity: nil.	
		
	self backupLevel: self level.
	
	self lineWidth: STWSimulation normalLineWidth.

	self addMorph: self fillingMorph;
		addMorph: self levelMorph;
		addMorph: self nameMorph.
		
	nameMorph updatePositionFromOwnerCenter.
	levelMorph updatePositionFromOwnerCenter.
	self updateFilling.

	self extent: 80@80.
	self permitNegative.
