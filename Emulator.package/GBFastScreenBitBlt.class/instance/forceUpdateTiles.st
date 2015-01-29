drawing-tiles
forceUpdateTiles
 
1 to: 384 do:[:index | 
	self recycleCachedForm: (cacheCalculatedTileMap at: index ) toTile: index -1.	
	updateBackgroundDataList at: index put: true.
	backgroundDirty = true.
   updateTilesList at: index put: false.
	].
	tilesDirty :=false.