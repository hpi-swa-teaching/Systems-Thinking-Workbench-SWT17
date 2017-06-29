interaction
mouseUp: evt
	"Creates connection when over a node"

	self previewConnection ifNotNil: [
		self finishPreviewConnection: evt].
