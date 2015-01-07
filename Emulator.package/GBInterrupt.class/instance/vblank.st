as yet unclassified
vblank
	self prepareInterrupt.
	interruptFlag nVBlank.
	self jumpTo: 16r40.