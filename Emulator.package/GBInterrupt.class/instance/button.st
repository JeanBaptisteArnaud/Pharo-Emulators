as yet unclassified
button
	self prepareInterrupt.
	interruptFlag nJoypad.
	self jumpTo: 16r60.