as yet unclassified
createTestsSetMemory
	| test |
	test := GBGraphicsRAMTileSet new.
	1 to: 6144 do:[:e | test at: e put: 0].
	^test