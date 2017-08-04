stepping and presenter
stepAnimation: deltaTime
	"Advances the progress of the animation by the given time (in simulation intervals)."

	self progress: self progress + (self velocity * deltaTime).
