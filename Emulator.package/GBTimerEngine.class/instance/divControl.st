controller
divControl
	((divTicks := divTicks + processorTicks) >= 256) 
		ifTrue:[divTicks := divTicks - 256.
		self div: (self div + 1)].