updating
update: anAspect
	
	anAspect == #position ifTrue: [self updatePolygon].
	anAspect == #deleted ifTrue: [self delete].
