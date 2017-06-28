accessing
action: aBlock
	"test I got a blockClosure and if it is one, set it"
	
	aBlock isBlock ifTrue: [action := aBlock.]