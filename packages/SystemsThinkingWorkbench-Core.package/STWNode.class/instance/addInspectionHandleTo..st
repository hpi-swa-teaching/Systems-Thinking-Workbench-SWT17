halos and balloon help
addInspectionHandleTo: myHalo

	^ self
		addSimpleHandleTo: myHalo
		action: #inspect
		target: self
		color: Color gray
		balloonText: 'Inspect'
		icon: MenuIcons smallFullscreenOnIcon asMorph
