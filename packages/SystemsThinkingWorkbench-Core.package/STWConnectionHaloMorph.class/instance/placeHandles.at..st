private
placeHandles: aCollection at: aProgress
	"Places all given handles along a line perpendicular to the curve of this target connection.
	The line will be centered on the curve."

	| initialOffset offset origin normal spaces |
	
	spaces := aCollection size - 1.
	
	normal := (self target segment tangentAt: aProgress) rightRotated normalized.
	origin := self target position + (self target segment valueAt: aProgress).
	
	initialOffset := ((spaces * self handleRadius * 2) + (spaces * self handleSpacing * 2)) / 2.
	offset := (self handleRadius + self handleSpacing + self handleRadius) negated.
	
	aCollection 
		do: 	[:element | 
			self addMorph: (element 
								center: (origin + (normal * initialOffset)); 
								yourself).
			initialOffset := initialOffset + offset.].
