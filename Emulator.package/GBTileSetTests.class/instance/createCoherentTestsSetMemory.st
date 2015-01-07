as yet unclassified
createCoherentTestsSetMemory
	| test cnt |
	cnt := 0.
	test := GBGraphicsRAMTileSet new.
	1 to: 6144 do:[:e | 
		test at: e put: cnt. cnt := cnt + 1.
		cnt = 256 ifTrue:[cnt := 0].
		].
	^test