geometry
from: start to: end via: via
	"TODO: comment this"

	| bounds offset |

	self flag: #todo.
	self segment: (Bezier2Segment from: start to: end via: via).
	bounds := self computeBounds.
	offset := bounds origin negated.
	self segment from: (start translateBy: offset) to: (end translateBy: offset) via: (via translateBy: offset).
	self extent: bounds extent.
	self position: start - (start translateBy: offset).
