tools
bitToUse: instructionValue
	| v |
	v := (AtomicRegisterMapMask & instructionValue) .
	(v = 0) ifTrue:[^#b].
	(v = 1) ifTrue:[^#c].
	(v = 2) ifTrue:[^#d].
	(v = 3) ifTrue:[^#e].
	(v = 4) ifTrue:[^#h].
	(v = 5) ifTrue:[^#l].
	(v = 6) ifTrue:[^#hl].
	(v = 7) ifTrue:[^#a].
	