updating
onParticleArrive: aParticle
	
	| newLevel |
	
	newLevel := self level + aParticle transferValue.
	self capacity ifNotNil: [newLevel := newLevel clampHigh: self capacity].
	self level: newLevel.
	self changed: #input with: self.
