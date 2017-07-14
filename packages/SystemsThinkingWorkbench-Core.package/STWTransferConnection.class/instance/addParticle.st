as yet unclassified
addParticle

	| particle |

	particle := (self startNode requestParticleCosting: self intake valued: self output) center: self position + self segment start.
	self particles add: particle.
	self addMorph: particle.
