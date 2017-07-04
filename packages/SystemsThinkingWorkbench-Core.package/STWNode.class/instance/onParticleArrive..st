accessing
onParticleArrive: aParticle

	self level: self level + aParticle transferValue.

	self owner asynchronousConnections do: [:c |
			self = c startNode ifTrue: [c performSimulationStep]].
