dropping/grapping
wantsToBeDroppedInto: aMorph
	
	^ (aMorph class = STWNode) & (self startNode ~= aMorph)
	