halos and balloon help
addDeletionHandlerTo: myHalo on: aPoint withRadius: aRadius
	| handle |
	handle := myHalo
		createHandleFor: [ self perform: #delete ]
		to: Color bubblegum
		color: MenuIcons smallDeleteIconContents asMorph
		containing: nil.
	handle center: aPoint.
	myHalo addMorph: handle