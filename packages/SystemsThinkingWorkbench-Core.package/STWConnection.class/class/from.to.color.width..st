instance creation
from: startPoint to: endPoint color: lineColor width: lineWidth

	^ STWConnection vertices: {startPoint. endPoint}
			color: Color black borderWidth: lineWidth borderColor: lineColor