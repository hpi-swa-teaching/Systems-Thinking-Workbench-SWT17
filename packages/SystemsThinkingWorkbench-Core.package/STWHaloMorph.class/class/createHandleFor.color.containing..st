construction
createHandleFor: aBlock color: aColor containing: aMorph
	"helper function for creating a new STWHaloMorphButton "
	
	|handler|
	handler := STWHaloButtonMorph new.
	handler action: aBlock;
			color: aColor;
			borderColor: Color black;
			target: self target.
			
	^handler.
	