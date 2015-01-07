tools
coupleRegisterToUse: instructionValue
	| v |
	v := (AtomicCouplesRegisterMapMask & instructionValue) .
	(v = 0) ifTrue:[^{#b. #c}].
	(v = 1) ifTrue:[^{#d. #e}].
	(v = 2) ifTrue:[^{#h. #l}].
	GBUnimplemented run.
	(v = 3) ifTrue:[^{#a. #f}].

	