controller
internalTimer
	((timerTicks := timerTicks + processorTicks) >= overflow) 
		ifTrue:[timerTicks := timerTicks - overflow. 
			((self TIMA: (self TIMA + 1)) >= 256) 
				ifTrue:[self TIMA: self TMA.
						self interruptFlag Timer ]].