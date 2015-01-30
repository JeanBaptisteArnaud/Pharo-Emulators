initialize - memory 
initializeOAM
	| oam | 
	oam :=	 GBSpriteAttributeTable new.
	16rFE01 to: 16rFEA0 do:[:e | memoryMap at: e put: oam ].