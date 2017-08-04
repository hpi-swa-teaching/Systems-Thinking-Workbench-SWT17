geometry
lineTo: end onCircle: origin radius: radius
	"Projects the line from origin to end onto a circle."
	
	"Prevent zero divide"
	origin = end
		ifTrue: [^ origin].
	^ origin + ((end - origin) normalized * radius)
