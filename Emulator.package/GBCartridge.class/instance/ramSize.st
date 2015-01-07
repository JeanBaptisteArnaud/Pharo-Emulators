api
ramSize
	^RamSize at: (currentReadBank at: 16r014A) ifAbsent:['check your rom'].

