controller
lcdTiming
	lcdTicks := lcdTicks + processorTicks.
	(lcdTicks >= 456) 
		ifTrue:[
			lcdTicks := lcdTicks - 456.
			self compareLYLYC.
			(self IncrementAndLY >= 154) ifTrue:[screen LY: screen LY - 154].
			(screen LY = 144) 
				ifTrue:[self mode1] 
				ifFalse:[(self endFrame: (screen LY = 0))]].
			
	(screen LY < 144) ifTrue:[ "outside V-Blank"
		(lcdTicks <= 204) ifTrue:[self mode0] ifFalse:[ 
		(lcdTicks <= 284) ifTrue:[self mode2] ifFalse:[ 
		self mode3]]].