initialize-release
initializeCartridgeType

CartridgeType := Array new: 16r100.
CartridgeType at: 16r01 put: 'ROM'. 
CartridgeType at: 16r02 put: 'MBC1'.
CartridgeType at: 16r03 put: 'MBC1RAM'.   
CartridgeType at: 16r04 put: 'MBC1RAMBATTERY'.   
CartridgeType at: 16r06 put: 'MBC2'.   
CartridgeType at: 16r07 put: 'MBC2BATTERY'.   
CartridgeType at: 16r09 put: 'ROMRAM'.   
CartridgeType at: 16r10 put: 'ROMRAMBATTERY'.
CartridgeType at: 16r0c put: 'MMM01'.
CartridgeType at: 16r0d put: 'MMM01RAM'.   
CartridgeType at: 16r0e put: 'MMM01RAMBATTERY'.   
CartridgeType at: 16r10 put: 'MBC3TIMERBATTERY'.      
                                  
CartridgeType at: 16r11 put: 'MBC3TIMERRAMBATTERY'.      
CartridgeType at: 16r12 put: 'MBC3'.      
CartridgeType at: 16r13 put: 'MBC3RAM'.      
CartridgeType at: 16r14 put: 'MBC3RAMBATTERY'.      
CartridgeType at: 16r16 put: 'MBC4'.      
CartridgeType at: 16r17 put: 'MBC4RAM'.      
CartridgeType at: 16r18 put: 'MBC4RAMBATTERY'.      
CartridgeType at: 16r20 put: 'MBC5'.      
             
CartridgeType at: 16r1B put: 'MBC5+RAM'.      
CartridgeType at: 16r1C put: 'MBC5+RAM+BATTERY'.      
CartridgeType at: 16r1D put: 'MBC5+RUMBLE'.      
CartridgeType at: 16r1E put: 'MBC5+RUMBLE+RAM'.      
CartridgeType at: 16r1F put: 'MBC5+RUMBLE+RAM+BATTERY'.      
CartridgeType at: 16rFD put: 'POCKET CAMERA'.      
CartridgeType at: 16rFE put: 'BANDAI TAMA5'.      
CartridgeType at: 16rFF put: 'HuC3'.      
CartridgeType at: 16r100 put: 'HuC1+RAM+BATTERY'.      
