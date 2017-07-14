private
addHandles

	self 
		start: OrderedCollection new;
		middle: OrderedCollection new;
		end: OrderedCollection new;
		
		addCircleHandles;
		
		placeHandles: self start at: 0;
		placeHandles: self middle at: (1 / 2);
		placeHandles: self end at: 1.
