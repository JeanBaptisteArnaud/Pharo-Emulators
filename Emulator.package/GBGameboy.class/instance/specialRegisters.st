gt-inspector
specialRegisters
	^{ 
	'FF44:LY 					', screen LY printString.
	'FFE3:					', (mmu rb: 16rffe3) printString.
	'timer Tetris:				', (mmu rb: 16rffa6) printString.
	'FF85???					', (mmu rb: 16rff85) printString.
	'FFFF:					', ((mmu rb: 16rffff) value storeStringBase: 2).
	'ime: 					', processor flags ime printString.
}.