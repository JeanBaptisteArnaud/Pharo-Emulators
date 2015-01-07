initialize-release
initializeRamSize

RamSize := Array new: 4.
RamSize at: 16r01 put: '0k'. 
RamSize at: 16r02 put: '2k'. 
RamSize at: 16r03 put: '8k'. 
RamSize at: 16r04 put: '32k'. 
   