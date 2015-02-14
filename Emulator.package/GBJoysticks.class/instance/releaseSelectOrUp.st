api
releaseSelectOrUp
	value := value bitAt: 3 put: 1.
	self raiseInterrupt.