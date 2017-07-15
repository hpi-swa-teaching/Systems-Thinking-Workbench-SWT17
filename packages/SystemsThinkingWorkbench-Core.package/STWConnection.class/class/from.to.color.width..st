instance creation
from: startNode to: endNode color: lineColor width: lineWidth

	^ self new lineColor: lineColor;
		lineWidth: lineWidth;
		connect: startNode with: endNode
