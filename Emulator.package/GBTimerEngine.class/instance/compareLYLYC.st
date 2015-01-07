as yet unclassified
compareLYLYC
	(screen LY = self LYC)	 
		ifTrue:[self stat setCoincidenceFlag.
			self interruptFlag LCDSTAT ]
		ifFalse:[self stat resetCoincidenceFlag].