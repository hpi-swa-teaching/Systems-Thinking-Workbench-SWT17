halos and balloon help
addResizeHandlerTo: myHalo

	^ self
		addSimpleHandleTo: myHalo
		action: #resizeMorph:
		target: self
		color: Color orchid lighter
		balloonText: 'Resize'
		icon: MenuIcons smallFontsIcon asMorph
