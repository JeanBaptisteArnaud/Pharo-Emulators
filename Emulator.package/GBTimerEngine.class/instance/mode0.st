as yet unclassified
mode0
	(self stat mode ~= 0) 
		ifTrue:[self stat mode0.
			self stat HBlank ifTrue:[self interruptFlag LCDSTAT]]. 
	
	