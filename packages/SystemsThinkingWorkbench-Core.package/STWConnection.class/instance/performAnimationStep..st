stepping and presenter
performAnimationStep: delta
	"Moves every particle currently on the connection along itself."

	self particles
		do: [:particle |
			particle
				stepAnimation: delta;
				center: (self position + (self segment valueAt: particle progress));
				rotationDegrees: (self segment tangentAt: particle progress) degrees + 45.
			particle progress >= 1 ifTrue: [
					self endNode onParticleArrive: particle;
						removeMorph: particle.].].
	self particles removeAllSuchThat: [:e | e progress >= 1].
