as yet unclassified
forceUpdateTileMap0: bitBltPool0 using: cache pattern: updateBackgroundDataList
	1 to: 1024 do:[ :eachIndex |
			(bitBltPool0 at: eachIndex) sourceForm: (cache at: (self at: eachIndex) + 1). 
		].