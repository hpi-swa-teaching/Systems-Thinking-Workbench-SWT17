interaction
requestParticleCosting: cost valued: value
	
	self level: self level - cost.
	^ STWParticle new color: self fillingMorph color;
						transferValue: value