initialization
initialize 
	"Creates a node with a random color."
	"Sets node's level to 42."
	
	|verticalOffset|
	
	super initialize.
	self connections: OrderedCollection new.
	self color: Color random;
		extent: 80@80.
		
	verticalOffset := 0@(self height / 4).
	nameMorph := (STWStringMorph new contents: '???') offset: 0-verticalOffset.
		
	self levelMorph: ((StringMorph new contents: 42 asString)
						center: self center + verticalOffset);
		addMorph: self levelMorph;
		addMorph: self nameMorph.
		
	nameMorph updatePositionFromOwnerCenter.