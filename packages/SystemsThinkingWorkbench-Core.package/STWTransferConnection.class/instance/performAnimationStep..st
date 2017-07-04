stepping and presenter
performAnimationStep: delta
	"Moves every particle currently on the connection along itself."

	self particles do: [:particle |
		particle stepAnimation: delta.
		particle center: (self position + (self segment valueAt: particle progress)).
		particle progress >= 1 ifTrue: [
			self endNode onParticleArrive: particle.
			self removeMorph: particle.].].
	self particles removeAllSuchThat: [:e | e progress >= 1].
	self particles isEmpty ifTrue: [
		self stopStepping.
		self lastStepTime: nil.].
