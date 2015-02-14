api
releaseStartOrDown
	value := value bitAt: 4 put: 1.
	self raiseInterrupt.