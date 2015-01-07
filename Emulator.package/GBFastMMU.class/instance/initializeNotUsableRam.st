initialize - memory 
initializeNotUsableRam
	| mirror | 
	mirror :=	GBNotUsableRam new.
	16rFEA1 to: 16rFF00 do:[:e | memoryMap at: e put: mirror ].