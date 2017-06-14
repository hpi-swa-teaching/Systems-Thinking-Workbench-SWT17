stepping and presenter
stepAt: aTime
	
	| delta |
	
	self lastStepTime ifNotNil: [
		delta := (aTime - self lastStepTime) / 1000.
		self lastStepTime: aTime.
		self performAnimationStep: delta.].
	