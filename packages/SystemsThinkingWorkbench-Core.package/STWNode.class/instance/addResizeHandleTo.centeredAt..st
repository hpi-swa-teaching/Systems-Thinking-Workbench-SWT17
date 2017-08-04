halos and balloon help
addResizeHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #resizeMorph:
		to: self
		color: Color yellow
		containing: (ScriptingSystem formAtKey: #'Halo-Scale') asMorph)
			balloonText: 'Resize';
			center: aPoint;
			yourself).
