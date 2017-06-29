initialization
initialize
	"Creates a node with a random color."
	"Sets node's level to 42."
	
	| verticalOffset |
	
	super initialize.
	self color: Color transparent; 
		extent: 80 @ 80.
		
	self density: 100.
		
	verticalOffset := 0 @ (self height / 4).
	nameMorph := ((STWStringMorph new contents: '???') offset: 0 - verticalOffset).
	levelMorph := ((STWNumberMorph new contents: 42 asString) offset: verticalOffset).
	fillingMorph := (((CircleMorph new) color: Color random) center: self center) borderWidth: 0.
	
	self backupLevel: self level.

	self addMorph: self fillingMorph;
		addMorph: self levelMorph;
		addMorph: self nameMorph.
		
	nameMorph updatePositionFromOwnerCenter.
	levelMorph updatePositionFromOwnerCenter.
	self updateFilling. 
	
	self capacity: nil.
