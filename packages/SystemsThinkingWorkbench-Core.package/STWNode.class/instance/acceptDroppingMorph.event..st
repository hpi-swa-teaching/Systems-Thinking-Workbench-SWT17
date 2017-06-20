interaction
acceptDroppingMorph: aMorph event: evt 
	"Only accepts connection from another node."
	
	^ (aMorph isKindOf: STWConnection) & (self ~= aMorph)