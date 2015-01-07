as yet unclassified
migrateOutsideBios
	inbios := false.
	1 to: 16r100 do: [:e | memoryMap at: e put: cartridgeRom currentReadBank ].