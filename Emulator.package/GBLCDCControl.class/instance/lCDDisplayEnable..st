LCD Control - write
LCDDisplayEnable: integer

	(integer = 0) 
		ifTrue:[screen disableDisplay] 
		ifFalse:[screen enableDisplay].
	^ value bitAt: 8 put:integer