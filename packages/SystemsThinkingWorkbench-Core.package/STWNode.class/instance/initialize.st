initialization
initialize
	"Creates a node with a random color."
	"Sets node's level to 42."
	
	| verticalOffset |
	
	super initialize.
	self color: Color transparent.
    
	verticalOffset := 0@(self height / 4).
	nameMorph := (STWStringMorph new offset: 0 - verticalOffset).
	levelMorph := (STWLevelMorph new offset: verticalOffset).
	fillingMorph := (((CircleMorph new) color: Color random) center: self center) borderWidth: 0.
	
	self addMorph: self fillingMorph;
		addMorph: self levelMorph;
		addMorph: self nameMorph.
	
	levelMorph contents: '42'.
	nameMorph contents: '???'.	
	
	self density: 0.01.
	self capacity: nil.	
		
	self backupLevel: self level.
	
	self lineWidth: STWSimulation normalLineWidth.

	nameMorph updatePositionFromOwnerCenter.
	levelMorph updatePositionFromOwnerCenter.
	self updateFilling.

	self extent: 80@80.
	negativeAllowed := true.
	self levelMorph minimum: nil.
