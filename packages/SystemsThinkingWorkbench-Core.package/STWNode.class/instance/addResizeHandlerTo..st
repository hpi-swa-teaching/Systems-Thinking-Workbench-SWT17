halos and balloon help
addResizeHandlerTo: myHalo

	^ self
		addSimpleHandleTo: myHalo
		action: #resizeMorph:
		target: self
		color: Color blue muchLighter
		balloonText: 'Resize'
		icon: MenuIcons smallFontsIcon asMorph
