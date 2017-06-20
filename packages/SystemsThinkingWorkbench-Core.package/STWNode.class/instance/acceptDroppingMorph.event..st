interaction
acceptDroppingMorph: aMorph event: evt 
	"Delegate to my owning Card Container"
	
	"(self owner isKindOf: AltCardContainerMorph)
	ifTrue: [ ^(self owner) acceptDroppingMorph: aMorph
				event: evt ]
	ifFalse: [ ^false ]"
	^ (aMorph isKindOf: STWConnection) & (self ~= aMorph)