initialize - memory 
initializeMirror
	| mirror | 
	mirror :=	GBMirror new.
	16rE001 to: 16rFE00 do:[:e | memoryMap at: e put: mirror ].