api
title
	^self isNewRom 
		ifTrue:[self newGameTitle]
		ifFalse:[self oldGameTitle].