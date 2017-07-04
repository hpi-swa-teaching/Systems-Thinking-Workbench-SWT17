accessing
containsConnectionFrom: start to: end

	^ self synchronousConnections anySatisfy: [ :c | c startNode = start and: [c endNode = end]]
