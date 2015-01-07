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
			combinationRule: Form over 
			destOrigin: 0@0
			sourceOrigin: 0@0
			extent: 8@8 
			clipRect: (0@0 extent: self screenSize).
	
	palette  := (Array new: 4) 
		at: 1 put: ( Color gray pixelValueForDepth: 32);
		at: 2 put: ( Color pink pixelValueForDepth: 32);
		at: 3 put: ( Color red pixelValueForDepth: 32);
		at: 4 put: ( Color black pixelValueForDepth: 32);
		yourself.
		
	backgroundDirty := false.
	tilesDirty := true.
	updateTilesList := Array new: 513.
	updateBackgroundDataList  := Array new: 2049.
	updateBackgroundTileList  := Array new: 2049 withAll: false.
	 
	
	cacheCalculatedTileMap := Array new: 384.
	1 to: 384 do:[:index | cacheCalculatedTileMap at: index put: (Form extent: 8@8 depth: 32) ].
	
	
