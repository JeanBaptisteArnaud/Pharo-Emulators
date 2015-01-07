initialization
initialize 
	banks := Array new: 0.
	CartridgeType ifNil:[self initializeCartridgeType].
 	DestinationCode ifNil:[self initializeDestinationCode].
	LicenseCode ifNil:[self initializeLicenseCode].
	RamSize ifNil:[self initializeRamSize].
	RomSize ifNil:[self initializeRomSize].