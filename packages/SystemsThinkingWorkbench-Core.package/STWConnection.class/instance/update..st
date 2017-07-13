updating
update: anAspect 

	anAspect == #bounds ifTrue: [self updatePolygon].
	anAspect == #deleted ifTrue: [self delete].
