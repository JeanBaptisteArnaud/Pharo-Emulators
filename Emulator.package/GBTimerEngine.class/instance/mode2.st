as yet unclassified
mode2
	(self stat mode ~= 2) 
		ifTrue:[self stat mode2.
			(self stat OAM = 1) ifTrue:[self interruptFlag LCDSTAT]]. 
	
	