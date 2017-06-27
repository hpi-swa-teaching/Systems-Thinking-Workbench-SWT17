geometry
computeBounds

	^ ((self segment bounds encompass: (self leftArrowPoint)) encompass: (self rightArrowPoint)) expandBy: self lineWidth
