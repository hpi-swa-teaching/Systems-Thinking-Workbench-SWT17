stepping and presenter
performAnimationStep: delta
	"Moves every particle currently on the connection along itself."
	
	self particles do: [:particle |
		particle stepAnimation: delta.
		particle owner center: (self position + (self segment valueAt: particle progress)).
		particle rotationDegrees: (self segment tangentAt: particle progress) degrees + 45.
		particle progress >= 1 ifTrue: [
			self endNode level: self endNode level + self output.
			self removeMorph: particle owner.].].
	self particles removeAllSuchThat: [:e | e progress >= 1].
	self particles isEmpty ifTrue: [
		self stopStepping.
		self lastStepTime: nil.].
