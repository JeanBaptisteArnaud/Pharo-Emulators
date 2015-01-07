as yet unclassified
stat
	self prepareInterrupt.
	interruptFlag nLCDSTAT.
	self jumpTo: 16r48.