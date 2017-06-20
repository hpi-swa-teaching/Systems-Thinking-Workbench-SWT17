dropping/grabbing
wantsToBeDroppedInto: aMorph 
	"I want to be dropped onto another node."
	
	^ (aMorph isKindOf: STWNode) & (self startNode ~= aMorph)