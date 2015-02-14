gt-inspector
specialRegisters
	^{ 
	'FF00:input				',(mmu rb: 16rff00) bin.
	'FF46:DMA				',(mmu rb: 16rff46) printString.
	'FF44:LY 					', screen LY printString.
	'FFE3:					', (mmu rb: 16rffe3) printString.
	'timer Tetris:				', (mmu rb: 16rffa6) printString.
	'FF85???					', (mmu rb: 16rff85) printString.
	'FFFF:					', ((mmu rb: 16rffff) value storeStringBase: 2).
	'ime: 					', processor flags ime printString.
}.