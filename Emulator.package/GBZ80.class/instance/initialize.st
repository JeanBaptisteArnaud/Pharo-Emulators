initialize-release
initialize
	super initialize.
	self initializeMask.
	self initializeFlags.
	self initializeRegister.
	GBOpCode createAllOpCodesForProcessor: self.
	debugCount := 0. 
	lastTen := OrderedCollection new.