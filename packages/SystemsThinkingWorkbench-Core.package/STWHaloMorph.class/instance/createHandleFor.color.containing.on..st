construction
createHandleFor: aBlock color: aColor containing: aMorph on: aTarget
	"helper function for creating a new STWHaloMorphButton "
	
	|handler|
	handler := STWHaloButtonMorph new.
	handler action: aBlock;
			color: aColor;
			borderColor: Color black;
			target: aTarget;
			addMorph: (aMorph center:handler center).
			
	^handler.
