initialize-release
loadRom: aRom
	cartridgeRom := aRom.	
	cartridgeRom ifNotNil: [self initializeRom].
	self migrateInsideBios.