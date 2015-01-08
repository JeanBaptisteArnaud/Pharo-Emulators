drawing-tiles
updateTiles

1 to: 384 do:[:index | 
	(updateTilesList at: index) ifTrue: [
		self recycleCachedForm: (cacheCalculatedTileMap at: index ) toTile: index -1].	
	updateBackgroundDataList at: index put: true.
	backgroundDirty = true.
    	updateTilesList at: index put: false.
	].
	tilesDirty :=false.