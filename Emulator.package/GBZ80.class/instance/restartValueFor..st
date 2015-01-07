tools
restartValueFor:  instructionValue
(2r000 == instructionValue) ifTrue:[^16r00].
(2r001 == instructionValue) ifTrue:[^16r08].
(2r010 == instructionValue) ifTrue:[^16r10].
(2r011 == instructionValue) ifTrue:[^16r18].
(2r100 == instructionValue) ifTrue:[^16r20].
(2r101 == instructionValue) ifTrue:[^16r28].
(2r110 == instructionValue) ifTrue:[^16r30].
(2r111 == instructionValue) ifTrue:[^16r38].