interaction
click: evt

	self connections 
		detect: [:connection | connection containsPoint: evt cursorPoint]
		ifFound: [:connection | connection click: evt]
		ifNone: [].
