as yet unclassified
initialize
	lcdTicks := 0.
	divTicks := 0.
	processorTicks := 0.
	timerTicks := 0.
	overflow := 1024.
	timerFrequences := Array new: 4.
	timerFrequences at: 1 put: 1024.
	timerFrequences at: 2 put: 16.
	timerFrequences at: 3 put: 64 .
	timerFrequences at: 4 put: 256.
	endFrame := false.
	stat := GBSTAT new.