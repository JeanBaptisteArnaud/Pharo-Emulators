as yet unclassified
updateTileMap1: bitBltPool0 using: cache pattern: updateBackgroundDataList
	1025 to: 2048 do:[ :eachIndex |
		(updateBackgroundDataList at: eachIndex) ifTrue:[ 
			(bitBltPool0 at: (eachIndex // 1024)) sourceForm: (cache at: (self at: eachIndex) + 1). 
		]].