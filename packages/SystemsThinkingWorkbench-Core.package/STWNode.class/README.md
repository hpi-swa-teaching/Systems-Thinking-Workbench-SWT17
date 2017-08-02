A STWNode is a CircleMorph that can interact with other Nodes through connections. Every incident connection is a dependent of the Node.

Instance Variables 			Type 						Description
	backupLevel:			Number 					the last manually set level, resets level to this when the simulation is reset 
	capacity:				Number 					the maximum amount of units this Node can hold
	density:				Number 					the compactness of the units in a Node (inverse scaling factor for fillingMorph area)
	fillingMorph:			CircleMorph 				represents Node's level (its area is proportional to the level), in a random color set on initialization
	levelMorph:				STWLevelMorph 			a text field for setting the level, only accepts numbers, also stores the current level of the Node
	nameMorph:			STWStringMorph 			a text field for setting the name
	negativeAllowed:		Boolean 					wether the level can become negative
	previewConnection: 	STWPreviewConnection 	the connection that is dragged from this Node, deleted if dropped anywhere 
