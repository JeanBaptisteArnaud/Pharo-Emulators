as yet unclassified
initialize
	| processor |
	memory := gb instVarNamed: 'mmu'.
	processor := gb instVarNamed: 'processor'.
	specialRegisterStore := Dictionary new.
		specialRegisterStore at: 'FF00:P1' put: [memory rb: 16rFF00].
		specialRegisterStore at: 'FF04:DIV' put: [memory rb: 16rFF04].
		specialRegisterStore at: 'FF05:TIMA' put: [memory rb: 16rFF05].
		specialRegisterStore at: 'FF06:TMA' put: [memory rb: 16rFF06].
		specialRegisterStore at: 'FF07:TAC' put: [memory rb: 16rFF07].
		specialRegisterStore at: 'FF0F:IF' put: [memory rb: 16rFF0F].
		specialRegisterStore at: 'FF40:LCDC' put: [memory rb: 16rFF40].
		specialRegisterStore at: 'FF41:STAT' put: [memory rb: 16rFF41].
		specialRegisterStore at: 'FF42:SCY' put: [memory rb: 16rFF42].
		specialRegisterStore at: 'FF43:SCX' put: [memory rb: 16rFF43].
		specialRegisterStore at: 'FF44:LY' put: [memory rb: 16rFF44].
		specialRegisterStore at: 'FF45:LYC' put: [memory rb: 16rFF45].
		specialRegisterStore at: 'FF46:DMA' put: [memory rb: 16rFF46].
		specialRegisterStore at: 'FF47:BGP' put: [memory rb: 16rFF47].
		specialRegisterStore at: 'FF48:OBP0' put: [memory rb: 16rFF48].
		specialRegisterStore at: 'FF49:OBP1' put: [memory rb: 16rFF49].
		specialRegisterStore at: 'FF4A:WY' put: [memory rb: 16rFFA4].
		specialRegisterStore at: 'FF4B:WX' put: [memory rb: 16rFF4B].
		specialRegisterStore at: 'FFFF:IE' put: [memory rb: 16rFFFF].
		specialRegisterStore at: 'a' put: (processor a).
		specialRegisterStore at: 'b' put: (processor b).
		specialRegisterStore at: 'c' put: (processor c).
		specialRegisterStore at: 'd' put: (processor d).
		specialRegisterStore at: 'e' put: (processor e).
		specialRegisterStore at: 'f' put: (processor f).
		specialRegisterStore at: 'h' put: (processor h).
		specialRegisterStore at: 'l' put: (processor l).
		
		specialRegisterStore at: 'af' put: (processor af).
		specialRegisterStore at: 'bc' put: (processor bc).
		specialRegisterStore at: 'de' put: (processor de).
		specialRegisterStore at: 'hl' put: (processor hl).
		specialRegisterStore at: 'sp' put: (processor sp).
		specialRegisterStore at: 'pc' put: (processor pc).
	
	
	super initialize.
	
	