geometry
from: start to: end

	self
		from: start 
		to: end 
		via: (self calculateViaPointFrom: start to: end).
