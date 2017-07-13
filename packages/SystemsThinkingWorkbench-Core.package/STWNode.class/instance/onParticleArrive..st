accessing
onParticleArrive: aParticle

	self level: self level + aParticle transferValue.
	self changed: #input with: self.
