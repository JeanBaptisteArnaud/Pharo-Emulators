initialize-release
initialize
	inbios := true.
	self loadRom: GBCartridge loadLandScapeDemo.
	self initializeMemoryMap.