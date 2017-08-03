halos and balloon help
addInspectionHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #doDebug:with:
		to: myHalo
		color: Color blue muchLighter
		containing: (ScriptingSystem formAtKey: #'Halo-Debug') asMorph)
			balloonText: 'Inspect';
			center: aPoint;
			yourself).
