geometry
calculateViaPointFrom: start to: end

	^ (start interpolateTo: end at: 0.5) + ((end - start rotateBy: 90 degreesToRadians about: 0@0) / 5)
