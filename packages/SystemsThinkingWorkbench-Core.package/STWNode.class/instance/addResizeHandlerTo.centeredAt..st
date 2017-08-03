halos and balloon help
addResizeHandlerTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #resizeMorph:
		to: self
		color: Color blue muchLighter
		containing: (STWNode loadIcon: 'resize') asMorph)
			balloonText: 'Resize';
			center: aPoint;
			yourself).
