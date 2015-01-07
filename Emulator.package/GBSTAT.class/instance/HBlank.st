as yet unclassified
HBlank
	^(((memory rb: 16rFF41) bitAnd: 2r11101111) = 1)
	
" Bit 6 - LYC=LY Coincidence Interrupt (1=Enable) (Read/Write)
 Bit 5 - Mode 2 OAM Interrupt         (1=Enable) (Read/Write)
 Bit 4 - Mode 1 V-Blank Interrupt     (1=Enable) (Read/Write)
 Bit 3 - Mode 0 H-Blank Interrupt     (1=Enable) (Read/Write)
 Bit 2 - Coincidence Flag  (0:LYC<>LY, 1:LYC=LY) (Read Only)
 Bit 1-0 - Mode Flag       (Mode 0-3, see below) (Read Only)
           0: During H-Blank
           1: During V-Blank
           2: During Searching OAM
           3: During Transferring Data to LCD Driver"