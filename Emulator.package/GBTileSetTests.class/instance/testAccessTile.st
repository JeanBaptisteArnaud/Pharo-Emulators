as yet unclassified
testAccessTile
	| testSet |
	testSet := self createTestsSetMemory.
	1 to: 384 do:[:e| 	
		((testSet tileAt: e) 
		).].