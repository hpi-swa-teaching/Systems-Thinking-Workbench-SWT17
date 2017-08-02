geometry
from: start to: end via: via
	"Updates the bezier segment of this connection.
	Makes sure it does not try to draw beyond its bounds while ensuring all waypoints are given in the bounds space of the connection."

	| bounds offset |


	self segment: (Bezier2Segment from: start to: end via: via).
	bounds := self computeBounds.
	offset := bounds origin negated.
	self segment from: (start translateBy: offset) 
		 		   to: (end translateBy: offset) 
				   via: (via translateBy: offset).
	self extent: bounds extent;
		position: start - (start translateBy: offset).

