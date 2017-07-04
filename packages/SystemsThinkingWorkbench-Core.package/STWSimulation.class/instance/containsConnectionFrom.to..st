accessing
containsConnectionFrom: start to: end

	^ self asynchronousConnections anySatisfy: [ :c | c startNode = start and: [c endNode = end]]
