A STWParticle is a Morph carying units along a STWConnection. How they are processed ist implemented in the connection itself.

Structure:
instance var 	Type 			Description 
progress		float 			Value between 0 and 1, describing the progress along the connection
transferValue:	number 		amount of units carried
velocity:		number 		Describes how often length of parent connection is passed in 1 second.
