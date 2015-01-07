extract:new
isNewRom
 	^(((currentReadBank at: 16r0145) = 0) and: ((currentReadBank at: 16r0146) = 0))not