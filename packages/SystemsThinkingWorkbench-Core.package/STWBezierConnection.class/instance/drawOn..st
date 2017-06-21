as yet unclassified
drawOn: aCanvas
	
	| v |
	super drawOn: aCanvas.
	aCanvas translateBy: self position during: [:ca | segment lineSegments: segment length / 20 do:[:p1 :p2|
			ca line: p1 rounded to: p2 rounded width: 2 color: Color black.
		].
		v := segment end.
		ca line: (segment valueAt: (1.0 - (1.0 / (segment length / 20)))) rounded to: v rounded width: 2 color: Color black.
		ca line: v rounded to: (self arrowPointAt: 135 length: 10) width: 2 color: Color black.
		ca line: v rounded to: (self arrowPointAt: -135 length: 10) width: 2 color: Color black.
	].