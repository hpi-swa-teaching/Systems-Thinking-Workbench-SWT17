updating
updatePolygon
	"Updates vertices of the connection and redraws them."
	
	| startPoint endPoint via |
	
	startPoint := self startNode center.
	endPoint := self endNode center.
	via := self calculateViaPointFrom: startPoint to: endPoint.
	startPoint := self
		lineTo: via
		onCircle: startPoint
		radius: self startNode radius.
	endPoint := self
		lineTo: via
		onCircle: endPoint
		radius: self endNode radius.
	self from: startPoint to: endPoint.

