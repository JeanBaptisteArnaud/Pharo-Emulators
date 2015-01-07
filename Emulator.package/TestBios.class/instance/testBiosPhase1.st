test
testBiosPhase1
	| p |
	self initializeBiosPhase1.
	"	LD SP,$fffe		; $0000  Setup Stack
		XOR A			; $0003  Zero the memory from $8000-$9FFF (VRAM)
		LD HL,$9fff		; $0004
	Addr_0007:
		LD (HL-),A		; $0007
		BIT 7,H		; $0008
		JR NZ, Addr_0007	; $000a"
	gameboy runBlock.
 	"processor assert"
	p := gameboy processor.
	"stack pointer"
	
	self assert: (p sp value = 65534).
	"program count"
	self assert: (p pc value = 13).
	"simple register"
	self assert: (p a value = 0).
	self assert: (p b value = 0).
	self assert: (p c value = 0).
	self assert: (p d value = 0).
	self assert: (p e value = 0).
	self assert: (p f value = 0).
	self assert: (p h value = 127).
	self assert: (p l value = 255).
	"double register"
	self assert: (p hl value = 32767). " '16r7FFF'" 
	self assert: (p bc value = 0).
	self assert: (p de value = 0).
	self assert: (p af value = 0).
	" memory "
	16r8000 to: 16r9FFF do: [:each | self assert: ((gameboy memory rb: each) = 0)].

	