initialize - memory 
migrateInsideBios
	bios := GBBios new.
	inbios := true.
	1 to: 16r100 do:[:e | memoryMap at: e put: bios ].
