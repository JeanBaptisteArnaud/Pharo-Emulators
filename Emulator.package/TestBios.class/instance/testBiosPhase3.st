test
testBiosPhase3
	| p |
	self initializeBiosPhase3.
	"		LD SP,$fffe					; $0000  Setup Stack
			XOR A						; $0003  Zero the memory from $8000-$9FFF (VRAM)
			LD HL,$9fff					; $0004
		Addr_0007:
			LD (HL-),A					; $0007
			BIT 7,H						; $0008
			JR NZ, Addr_0007			; $000a
			LD HL,$ff26				; $000c  Setup Audio
			LD C,$11					; $000f
			LD A,$80					; $0011 
			LD (HL-),A					; $0013
			LD ($FF00+C),A				; $0014
			INC C						; $0015
			LD A,$f3					; $0016
			LD ($FF00+C),A				; $0018
			LD (HL-),A					; $0019
			LD A,$77					; $001a
			LD (HL),A					; $001c
			LD A,$fc					; $001d  Setup BG palette
			LD ($FF00+$47),A			; $001f
			LD DE,$0104				; $0021  Convert and load logo data from cart into Video RAM
			LD HL,$8010				; $0024
		Addr_0027:
			LD A,(DE)					; $0027
			CALL $0095				; $0028
			CALL $0096				; $002b
			INC DE						; $002e
			LD A,E						; $002f
			CP $34						; $0030
			JR NZ, Addr_0027			; $0032
			  							; $0034  Load 8 additional bytes into Video RAM
							
							
							
							
							
							
			LD C,A						; $0095  Double up all the bits of the graphics data
			LD B,$04					; $0096     and store in Video RAM
		Addr_0098:
			PUSH BC					; $0098
			RL C						; $0099
			RLA							; $009b
			POP BC						; $009c
			RL C						; $009d
			RLA							; $009f
			DEC B						; $00a0
			JR NZ, Addr_0098			; $00a1
			LD (HL+),A					; $00a3
			INC HL						; $00a4
			LD (HL+),A					; $00a5
			INC HL						; $00a6
			RET							; $00a7
							
							
							"
							
	gameboy runBlock.
 	"processor assert"
	p := gameboy processor.
	"stack pointer"
	
	self assert: (p sp value = 65534).
	"program count"
	self assert: (p pc value =  53).
	"simple register"
	self assert: (p a value =  52). "16r77"
	self assert: (p b value = 0).
	self assert: (p c value =  115). 
	self assert: (p d value =  1).
	self assert: (p e value = 52).
	self assert: (p f value = 0).
	self assert: (p h value =   129).
	self assert: (p l value =   144).
	"double register"
	self assert: (p hl value =   33168 ). " '[16rff26 - 2]'" 
	self assert: (p bc value =   115). "c : 18"
	self assert: (p de value =  308).
	self assert: (p af value  =  13312). "a : 119"
	" memory "
	16r8000 to: 16r8009 do: [:each | self assert: ((gameboy memory rb: each) = 0)].
	self assert: (((16r8010 to: 16r8190) collect: [:each | gameboy memory rb:each ]) = #(240 0 240 0 252 0 252 0 252 0 252 0 243 0 243 0 60 0 60 0 60 0 60 0 60 0 60 0 60 0 60 0 240 0 240 0 240 0 240 0 0 0 0 0 243 0 243 0 0 0 0 0 0 0 0 0 0 0 0 0 207 0 207 0 0 0 0 0 15 0 15 0 63 0 63 0 15 0 15 0 0 0 0 0 0 0 0 0 192 0 192 0 15 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 240 0 240 0 0 0 0 0 0 0 0 0 0 0 0 0 243 0 243 0 0 0 0 0 0 0 0 0 0 0 0 0 192 0 192 0 3 0 3 0 3 0 3 0 3 0 3 0 255 0 255 0 192 0 192 0 192 0 192 0 192 0 192 0 195 0 195 0 0 0 0 0 0 0 0 0 0 0 0 0 252 0 252 0 243 0 243 0 240 0 240 0 240 0 240 0 240 0 240 0 60 0 60 0 252 0 252 0 252 0 252 0 60 0 60 0 243 0 243 0 243 0 243 0 243 0 243 0 243 0 243 0 243 0 243 0 195 0 195 0 195 0 195 0 195 0 195 0 207 0 207 0 207 0 207 0 207 0 207 0 207 0 207 0 60 0 60 0 63 0 63 0 60 0 60 0 15 0 15 0 60 0 60 0 252 0 252 0 0 0 0 0 252 0 252 0 252 0 252 0 240 0 240 0 240 0 240 0 240 0 240 0 243 0 243 0 243 0 243 0 243 0 243 0 240 0 240 0 195 0 195 0 195 0 195 0 195 0 195 0 255 0 255 0 207 0 207 0 207 0 207 0 207 0 207 0 195 0 195 0 15 0 15 0 15 0 15 0 15 0 15 0 252 0 252 0 0)).
	16r8190 to: 16r9FFF do: [:each | self assert: ((gameboy memory rb: each) = 0)].
	"test memory set"
	self assert: ((gameboy memory rb:  16rff26) = 128).
	self assert: ((gameboy memory rb:  16rff11) = 128).
	self assert: ((gameboy memory rb:  16rff12) = 243).
	self assert: ((gameboy memory rb:  16rff25) = 243).
	self assert: ((gameboy memory rb:  16rff24) = 119).
