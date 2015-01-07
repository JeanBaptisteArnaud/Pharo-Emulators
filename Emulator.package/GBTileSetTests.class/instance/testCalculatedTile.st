as yet unclassified
testCalculatedTile
	| testSet |
	testSet := self createTestsSetMemory.
	0 to: 383 do:[:e| 	
		((testSet calculatedTileAt: e) 
		).].