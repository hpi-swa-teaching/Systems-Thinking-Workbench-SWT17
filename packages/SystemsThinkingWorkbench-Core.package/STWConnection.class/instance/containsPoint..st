geometry testing
containsPoint: aPoint

	^ (super containsPoint: aPoint)
		and: [(self distanceFromBezier: aPoint - self position) < self selectionDistance]
