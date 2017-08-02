accessing
containsConnectionFrom: start to: end

	^ self connections anySatisfy: [:c | c startNode = start and: [c endNode = end]]
