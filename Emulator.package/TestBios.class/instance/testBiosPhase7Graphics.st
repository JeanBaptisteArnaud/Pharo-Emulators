test
testBiosPhase7Graphics
	|  p screen |
	self initializeBiosPhase7.
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
			LD DE,$00d8				; $0034  Load 8 additional bytes into Video RAM
			LD B,$08					; $0037
		Addr_0039:
			LD A,(DE)					; $0039
			INC DE						; $003a
			LD (HL+),A					; $003b
			INC HL						; $003c
			DEC B						; $003d
			JR NZ, Addr_0039			; $003e	
										; $003f										
										
										
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
	screen := gameboy screen.
	screen updateTiles.
	
	