halos and balloon help
addMoveHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #startDragTarget:
		to: myHalo
		color: Color brown
		containing: (ScriptingSystem formAtKey: #'Halo-Drag') asMorph)
			balloonText: 'Move';
			center: aPoint;
			yourself).
