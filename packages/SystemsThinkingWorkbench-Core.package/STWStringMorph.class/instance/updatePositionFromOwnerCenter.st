editing
updatePositionFromOwnerCenter

	self offset
		ifNil: [self center: self owner center]
		ifNotNil: [self center: self owner center + self offset].
