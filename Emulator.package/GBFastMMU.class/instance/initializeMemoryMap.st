initialize-release
initializeMemoryMap	
	memoryMap := Array new: 16r10000.
	self initializeVRam.
	self initializeEram.
	self initializeRam.
	self initializeWRam.
	self initializeMirror.
	self initializeOAM.
	self initializeNotUsableRam.
	self initializeHardware.
	self initializeUnknowFornow.
	