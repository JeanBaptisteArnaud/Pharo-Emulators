gt-inspector
specialRegisters
	^{ 
	'FF44:LY        ', screen LY printString.
	'FFE3:            ', (mmu rb: 16rffe3) printString.
	'timer Tetris:       ', (mmu rb: 16rffa6) printString.
	
	'FF00:P1'.
'FF04:DIV'.
'FF05:TIMA'.
'FF06:TMA '.
'FF07:TAC'.
'FF0F:IF'.
'FF40:LCDC'.
'FF41:STAT'.
'FF42:SCY'.
'FF43:SCX'.

'FF45:LYC'.
'FF46:DMA'.
'FF47:BGP'.
'FF48:OBP0'.
'FF49:OBP1'.
'FF4A:WY'.
'FF4B:WX' .
'FFFF           ', ((mmu rb: 16rffff) value storeStringBase: 2).
}.