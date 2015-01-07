test
testBiosPhase2
	| p |
	self initializeBiosPhase2.
	"		LD SP,$fffe			; $0000  Setup Stack
			XOR A				; $0003  Zero the memory from $8000-$9FFF (VRAM)
			LD HL,$9fff			; $0004
		Addr_0007:
			LD (HL-),A			; $0007
			BIT 7,H				; $0008
			JR NZ, Addr_0007	; $000a	
			LD HL,$ff26		; $000c  Setup Audio
			LD C,$11			; $000f
			LD A,$80			; $0011 
			LD (HL-),A			; $0013
			LD ($FF00+C),A		; $0014
			INC C				; $0015
			LD A,$f3			; $0016
			LD ($FF00+C),A		; $0018
			LD (HL-),A			; $0019
			LD A,$77			; $001a
			LD (HL),A			; $001c"
	gameboy runBlock.
 	"processor assert"
	p := gameboy processor.
	"stack pointer"
	
	self assert: (p sp value = 65534).
	"program count"
	self assert: (p pc value =  30).
	"simple register"
	self assert: (p a value =  119). "16r77"
	self assert: (p b value = 0).
	self assert: (p c value =  18). "16r11 + 1"
	self assert: (p d value = 0).
	self assert: (p e value = 0).
	self assert: (p f value = 0).
	self assert: (p h value =  255).
	self assert: (p l value =  36).
	"double register"
	self assert: (p hl value =  65316). " '[16rff26 - 2]'" 
	self assert: (p bc value =  18). "c : 18"
	self assert: (p de value = 0).
	self assert: (p af value =  30464). "a : 119"
	" memory "
	16r8000 to: 16r9FFF do: [:each | self assert: ((gameboy memory rb: each) = 0)].
	"test memory set"
	self assert: ((gameboy memory rb:  16rff26) = 128).
	self assert: ((gameboy memory rb:  16rff11) = 128).
	self assert: ((gameboy memory rb:  16rff12) = 243).
	self assert: ((gameboy memory rb:  16rff25) = 243).
	self assert: ((gameboy memory rb:  16rff24) = 119).
