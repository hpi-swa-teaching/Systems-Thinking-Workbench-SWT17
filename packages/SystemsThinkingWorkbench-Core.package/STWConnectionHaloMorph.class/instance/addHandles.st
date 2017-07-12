private
addHandles

	self start: OrderedCollection new.
	self middle: OrderedCollection new.
	self end: OrderedCollection new.

	self addCircleHandles.
	
	self placeHandles: self start at: 0.
	self placeHandles: self middle at: (1/2).
	self placeHandles: self end at: 1.
