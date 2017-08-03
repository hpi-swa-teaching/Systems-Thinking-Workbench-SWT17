halos and balloon help
addDeletionHandleTo: myHalo centeredAt: aPoint

	myHalo addMorph: ((myHalo
		createHandleFor: #delete
		to: self
		color: Color red muchLighter
		containing: ((ScriptingSystem formAtKey: #'Halo-Dismiss') scaledToSize: 22) asMorph)
			balloonText: 'Delete';
			center: aPoint;
			yourself).
