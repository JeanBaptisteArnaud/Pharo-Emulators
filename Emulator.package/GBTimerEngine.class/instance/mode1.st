as yet unclassified
mode1
	"Halt if:[
		((memory instVarNamed: 'z80') pc value > 100) 
			and:[((memory instVarNamed: 'z80') pc value < 110) ]
		
		
		]."
	(self stat mode ~= 1) 
		ifTrue:[self stat mode1.
			self stat intMode1 ifTrue:[self interruptFlag LCDSTAT].
			self interruptFlag VBlank.
			self displayIsOn ifTrue:[
				screen framebufferToLCD]]. 
	
	