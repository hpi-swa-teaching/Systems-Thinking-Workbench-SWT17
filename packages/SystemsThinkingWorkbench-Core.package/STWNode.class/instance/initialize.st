initialization
initialize 
	"Creates a node with a random color."
	"Sets node's level to 42."
	
	|verticalOffset|
	
	super initialize.
	self color: Color random;
		extent: 80@80.
		
	verticalOffset := 0@(self height / 4).
	nameMorph := (STWStringMorph new contents: '???') offset: 0-verticalOffset.
	levelMorph := (STWStringMorph new contents: 42 asString) offset: verticalOffset.
	self addMorph: self levelMorph;
		addMorph: self nameMorph.
    
	nameMorph updatePositionFromOwnerCenter.
	levelMorph updatePositionFromOwnerCenter.