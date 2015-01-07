as yet unclassified
serial
	self prepareInterrupt.
	interruptFlag nSerial.
	self jumpTo: 16r58.