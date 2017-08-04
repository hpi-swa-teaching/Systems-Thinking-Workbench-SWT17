updating
updatePreviewConnection: aPosition 
	"Duplicated code from STWConnection. However, the cursor is no node so the method does not work without adjustment."

	| startPoint endPoint via connection |
	
	startPoint := self center.
	endPoint := aPosition.
	connection := self previewConnection.
	via := connection calculateViaPointFrom: startPoint to: endPoint.
	startPoint := connection
		lineTo: via
		onCircle: startPoint
		radius: self radius.
	endPoint := connection
		lineTo: via
		onCircle: endPoint
		radius: 0.
	connection from: startPoint to: endPoint.
