as yet unclassified
updateDraggedConnection: aPosition 
| startPoint endPoint via connection|
	
	startPoint := self center.
	endPoint := aPosition.
	connection := self draggedConnection.
	
	via := connection calculateViaPointFrom: startPoint to: endPoint.
	
	startPoint := connection lineFrom: startPoint to: via onCircle: startPoint radius: self radius.
	endPoint := connection lineFrom: endPoint to: via onCircle: endPoint radius: 0.
	
	connection from: startPoint to: endPoint.