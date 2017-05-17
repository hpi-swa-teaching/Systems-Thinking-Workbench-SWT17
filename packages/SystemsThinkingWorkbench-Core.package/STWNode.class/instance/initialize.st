initialization
initialize 
	"Creates a node with a random color"
	"Sets node's level to 42"
	
	super initialize.
	self level: 42.
	
	self levelDisplayMorph: TextMorph new.	
	self addMorph: self levelDisplayMorph.
	self updateLevelMops.
		
	self color: Color random.