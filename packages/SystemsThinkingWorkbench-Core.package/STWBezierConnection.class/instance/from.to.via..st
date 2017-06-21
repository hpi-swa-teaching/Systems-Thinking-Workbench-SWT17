as yet unclassified
from: start to: end via: via

	| bounds offset |

	segment := Bezier2Segment from: start to: end via: via.
	bounds := self computeBounds.
	offset := bounds origin negated.
	segment from: (start translateBy: offset) to: (end translateBy: offset) via: (via translateBy: offset).
	self extent: bounds extent.
	self position: start - (start translateBy: offset).
	