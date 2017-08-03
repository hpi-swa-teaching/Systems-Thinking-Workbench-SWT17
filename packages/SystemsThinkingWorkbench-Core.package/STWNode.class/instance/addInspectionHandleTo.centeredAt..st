halos and balloon help
addInspectionHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #inspect
		to: self
		color: Color gray
		containing: MenuIcons smallFullscreenOnIcon asMorph)
			balloonText: 'Inspect';
			center: aPoint;
			yourself).
