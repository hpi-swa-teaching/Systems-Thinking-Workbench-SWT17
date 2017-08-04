simulation
addParticle

	(self endNode canReceive: self intake)
		ifTrue:
			[(self startNode requestParticleCosting: self intake valued: self output)
				ifNotNil: [:particle |
					particle center: self position + self segment start.
					self addMorph: particle.
					self particles add: particle.]].
