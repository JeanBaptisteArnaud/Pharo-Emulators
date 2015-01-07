initialize
initialize
	super initialize.
	screen := self newForm. 
	self createBackgroundArray.
	self createTilesArray.
	currentWinLine := 0.
	frameBuffer := Bitmap new: 23040 withAll: 0.
	updateTilesList := Array new: 513." let debug that later, nb of different Tile"
	updateBackgroundDataList  := Array new: 2049." let debug that later, nb of different Tile"
	updateBackgroundTileList  := Array new: 2049 withAll: false." let debug that later, nb of different Tile"
	screenContainer := screen asMorph.
	backgroundDirty := false.
	
		