as yet unclassified
testBiosResult
	| gb |
	gb := self testedClass new 
				pcToStop: 16r100;
				yourself.
	gb exec.
	
	"Register"
	self assert: (gb pc value = 16r101).
	self assert: (gb a value = 16r1).
	self assert: (gb b value = 16r0).
	self assert: (gb c value = 16r13).
	self assert: (gb d value = 16r0).
	self assert: (gb e value = 16rd8).
	self assert: (gb hl value = 16r014D).
	self assert: (gb sp value = 16rFFFE).
	"Flags"	
	self assert: (gb flags Z).
	self assert: (gb flags NN).
	"self assert: (gb flags H). to Study"
	self assert: (gb flags C).
	"Special Register"
	"self assert: ((gb mmu rb: 16rFF00) = 2r11111111)"
	"FF00:P1   1111 1111
	 FF04:DIV  0=0x00
	 FF05:TIMA 0=0x00
 	 FF06:TMA  0=0x00
	 FF07:TAC  1111 1000
	 FF0F:IF   0000 0000
	 FF40:LCDC 1001 0001
	 FF41:STAT 0000 0000
	 FF42:SCY  0
	 FF43:SCX  0
	 FF44:LY   0
	 FF45:LYC  0
	 FF46:DMA  0x00
	 FF47:BGP  1111 1100
	 FF48:OBP0 1111 1111
	 FF49:OBP1 1111 1111
	 FF4A:WY   0
	 FF4B:WX   0
	 FFFF:IE   0000 0000"