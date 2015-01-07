as yet unclassified
wb: value value: arg
	VBlank := ((arg bitAt: 1 ) = 1).
	LCDSTAT:= ((arg bitAt: 2 ) = 1).
	Timer := ((arg bitAt: 3 ) = 1).
	Serial := ((arg bitAt: 4 ) = 1).
	Joypad := ((arg bitAt: 5 ) = 1).