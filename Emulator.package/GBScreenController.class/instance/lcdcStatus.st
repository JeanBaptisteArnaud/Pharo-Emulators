as yet unclassified
lcdcStatus
	"8 bits value to control the screen"
	"Bit 6 - LYC=LY Coincidence Interrupt (1=Enable) (Read/Write)
	 Bit 5 - Mode 2 OAM Interrupt         (1=Enable) (Read/Write)
	 Bit 4 - Mode 1 V-Blank Interrupt     (1=Enable) (Read/Write)
	 Bit 3 - Mode 0 H-Blank Interrupt     (1=Enable) (Read/Write)
	 Bit 2 - Coincidence Flag  (0:LYC<>LY, 1:LYC=LY) (Read Only)
	 Bit 1-0 - Mode Flag       (Mode 0-3, see below) (Read Only)
           0: During H-Blank
           1: During V-Blank
           2: During Searching OAM
           3: During Transferring Data to LCD Driver"
	"Mode 0: The LCD controller is in the H-Blank period and
         the CPU can access both the display RAM (8000h-9FFFh)
         and OAM (FE00h-FE9Fh)
 
 Mode 1: The LCD controller is in the V-Blank period (or the
         display is disabled) and the CPU can access both the
         display RAM (8000h-9FFFh) and OAM (FE00h-FE9Fh)
 
 Mode 2: The LCD controller is reading from OAM memory.
         The CPU <cannot> access OAM memory (FE00h-FE9Fh)
         during this period.
 
 Mode 3: The LCD controller is reading from both OAM and VRAM,
         The CPU <cannot> access OAM and VRAM during this period.
         CGB Mode: Cannot access Palette Data (FF69,FF6B) either.

	 Mode 2  2_____2_____2_____2_____2_____2___________________2____
 	 Mode 3  _33____33____33____33____33____33__________________3___
 	 Mode 0  ___000___000___000___000___000___000________________000
 	 Mode 1  ____________________________________11111111111111_____"
			