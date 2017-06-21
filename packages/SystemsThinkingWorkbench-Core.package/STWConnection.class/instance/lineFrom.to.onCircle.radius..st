geometry
lineFrom: start to: end onCircle: origin radius: radius

	| normVector | 
	
	start = end ifTrue: [^ origin].
	
	normVector := (end - start) normalized.
	^ origin + (normVector * radius)