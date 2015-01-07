initialize - memory 
initializeRom
	16r0001 to: 16r4000 do:[:e | memoryMap at: e put: cartridgeRom currentReadBank].
	16r4001 to: 16r8000 do:[:e | memoryMap at: e put: cartridgeRom currentWriteBank].
