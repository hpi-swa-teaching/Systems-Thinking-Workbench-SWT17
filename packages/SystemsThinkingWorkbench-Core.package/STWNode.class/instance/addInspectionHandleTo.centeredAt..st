halos and balloon help
addInspectionHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #inspect
		to: self
		color: Color blue muchLighter
		containing: (ScriptingSystem formAtKey: #'Halo-Debug') asMorph)
			balloonText: 'Inspect';
			center: aPoint;
			yourself).
