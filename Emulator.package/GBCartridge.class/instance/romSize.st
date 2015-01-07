api
romSize
	^RomSize at: (currentReadBank at: 16r0149) ifAbsent:['check your rom'].

