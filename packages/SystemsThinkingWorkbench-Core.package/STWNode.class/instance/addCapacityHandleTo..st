halos and balloon help
addCapacityHandleTo: myHalo
	
	^ self
		addInputHandleTo: myHalo
		action: #capacity:
		contents: (self capacity
							ifNil: ['oo']
							ifNotNil: [self capacity asString])
		color: Color yellow darker
		balloonText: 'Set capacity'
		icon: MenuIcons objectCatalogIcon asMorph
