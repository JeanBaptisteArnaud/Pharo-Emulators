LCD Control - write
WindowDisplayEnable: integer
	(integer = 0) 
		ifTrue:[screen disableDisplay] 
		ifFalse:[screen enableDisplay].
		
	^ value bitAt: 6 put:integer