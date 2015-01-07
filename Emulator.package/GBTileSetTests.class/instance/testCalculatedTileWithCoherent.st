as yet unclassified
testCalculatedTileWithCoherent
	| testSet |
	testSet := self createCoherentTestsSetMemory.
	0 to: 380 do:[:e| 	
		((testSet calculatedTileAt: e) 
		).].