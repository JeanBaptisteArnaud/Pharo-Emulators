as yet unclassified
forceUpdateTileMap1: bitBltPool1 using: cache pattern: updateBackgroundDataList
	1025 to: 2048 do:[ :eachIndex |
			(bitBltPool1 at: (eachIndex \\ 1025) + 1) sourceForm: (cache at: (self at: eachIndex) + 1). 
		].
	