as yet unclassified
timer
	self prepareInterrupt.
	interruptFlag nTimer.
	self jumpTo: 16r50.