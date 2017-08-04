testing
testCarriageReturn
	"Test if all methods end on a empty new line (for git)."

	self testAllMethodsFor: [:source | source last = Character cr].
