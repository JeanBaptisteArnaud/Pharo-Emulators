Start	End	Description	Notes
0000	3FFF	16KB ROM bank 00	From cartridge, fixed bank
4000	7FFF	16KB ROM Bank 01~NN	From cartridge, switchable bank via MBC
8000	9FFF	8KB Video RAM (VRAM)	Switchable bank 0/1 in CGB mode
A000	BFFF	8KB External RAM	In cartridge, switchable bank if any
C000	CFFF	4KB Work RAM (WRAM) bank 0	
D000	DFFF	4KB Work RAM bank 1~N	Switchable bank 1~7 in CGB mode
E000	FDFF	Mirror of C000~DDFF (ECHO)	Typically not used
FE00	FE9F	Sprite attribute table (OAM)	
FEA0	FEFF	Not Usable	
FF00	FF7F	I/O Registers	
FF80	FFFE	High RAM (HRAM)	
FFFF	FFFF	Interrupt] Enable Register	