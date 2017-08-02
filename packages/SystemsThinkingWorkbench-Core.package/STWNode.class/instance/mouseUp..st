interaction
mouseUp: evt
	"When on a node, creates connection on mouseUp."

	self previewConnection ifNotNil: [self finishPreviewConnection: evt].
