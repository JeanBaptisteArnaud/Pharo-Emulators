as yet unclassified
initialize
	super initialize.
	"map initialization"
	formTileMap0 := Form extent: 256@256 depth: 32.
	bitBltPool0 := self contructBitBltPoolForForm: formTileMap0. 
	formTileMap1 := Form extent: 256@256 depth: 32.
	bitBltPool1 := self contructBitBltPoolForForm: formTileMap1. 
	
	bitbltScreen := BitBlt
			destForm: screen
			sourceForm: formTileMap0
			fillColor: Color white 
			combinationRule: Form paint 
			destOrigin: 0@0
			sourceOrigin: 0@0
			extent: self screenSize
			clipRect: (0@0 extent: self screenSize).
	
	bitbltBlankerScreen := BitBlt
			destForm: screen
			sourceForm: self createBlankForm
			fillColor: (Color white) 
			combinationRule: Form over 
			destOrigin: 0@0
			sourceOrigin: 0@0
			extent: self screenSize
			clipRect: (0@0 extent: self screenSize).
	
	
	tilePalette  := (Array new: 4) 
		at: 1 put: ( Color transparent pixelValueForDepth: 32);
		at: 2 put: ( Color random pixelValueForDepth: 32);
		at: 3 put: ( Color random pixelValueForDepth: 32);
		at: 4 put: ( Color random pixelValueForDepth: 32);
		yourself.
		
	backgroundDirty := false.
	tilesDirty := true.
	updateTilesList := Array new: 513 withAll: true.
	updateBackgroundDataList  := Array new: 2049 withAll: true.
	updateBackgroundTileList  := Array new: 2049 withAll: true.
	 
	
	cacheCalculatedTileMap := Array new: 384.
	1 to: 384 do:[:index | cacheCalculatedTileMap at: index put: (Form extent: 8@8 depth: 32) ].
	
	
