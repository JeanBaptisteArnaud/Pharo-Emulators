test
testBiosValidityRom
	|  p  indexInRom logoGameboy |
	self initializeBiosPhase8.
	gameboy runBlock.
	
	"index in card"
	
 	"processor assert"
	p := gameboy processor.
	indexInRom := 16r0104.
	logoGameboy := { 16rCE. 16rED. 16r66. 16r66. 16rCC. 16r0D. 16r00. 16r0B. 16r03. 16r73. 16r00. 16r83. 16r00. 16r0C. 16r00. 16r0D. 16r00. 16r08. 16r11. 16r1F. 16r88. 16r89. 16r00. 16r0E. 16rDC. 16rCC. 16r6E. 16rE6. 16rDD. 16rDD. 16rD9. 16r99. 16rBB. 16rBB. 16r67. 16r63. 16r6E. 16r0E. 16rEC. 16rCC. 16rDD. 16rDC. 16r99. 16r9F. 16rBB. 16rB9. 16r33. 16r3E. }.
	logoGameboy do: [:each | self assert: (gameboy memory rb: indexInRom) equals: each. indexInRom := indexInRom + 1. ].
	
	