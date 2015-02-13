initialization
initialize
	super initialize.
	self beTransparent.
	self createRight.
	self createLeft.
	self createTop.
	self createDown.
	self createMorphs.
	self initializeEvents.
	shortcutTableDown := Array new: 256. 
	shortcutTableUp := Array new: 256. 
	self initializeShortcut.
	toggleTable := Array new: 4 withAll: false.
