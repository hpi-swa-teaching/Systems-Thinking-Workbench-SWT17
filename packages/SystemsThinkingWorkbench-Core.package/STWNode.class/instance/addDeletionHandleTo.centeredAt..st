halos and balloon help
addDeletionHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #delete
		to: self
		color: Color red muchLighter
		containing: MenuIcons smallDeleteIcon asMorph)
			balloonText: 'Delete';
			center: aPoint;
			yourself).
