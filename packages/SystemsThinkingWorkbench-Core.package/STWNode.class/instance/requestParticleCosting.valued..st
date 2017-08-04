updating
requestParticleCosting: cost valued: value
	
	(self canProvide: cost)
		ifTrue: 
			[self level: self level - cost.
			^ STWParticle new 
				color: self fillingMorph color;
				transferValue: value; 
				yourself].
	^ nil
