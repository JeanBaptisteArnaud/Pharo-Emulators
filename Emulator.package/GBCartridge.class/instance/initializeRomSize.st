initialize-release
initializeRomSize
 
RomSize := Array new: 16r55.
RomSize at: 16r01 put: '32KByte (no ROM banking)'. 
RomSize at: 16r02 put: '64KByte (4 banks)'.
RomSize at: 16r03 put: '128KByte (8 banks)'.   
RomSize at: 16r04 put: '256KByte (16 banks)'.   
RomSize at: 16r05 put: '512KByte (32 banks)'.   
RomSize at: 16r06 put: '1MByte (64 banks)  - only 63 banks used by MBC1'.   
RomSize at: 16r07 put: '2MByte (128 banks) - only 125 banks used by MBC1'.   
RomSize at: 16r08 put: '4MByte (256 banks)'.
RomSize at: 16r53 put: '1.1MByte (72 banks)'.
RomSize at: 16r54 put: '1.2MByte (80 banks)'.
RomSize at: 16r55 put: '1.5MByte (96 banks)"'.   
    