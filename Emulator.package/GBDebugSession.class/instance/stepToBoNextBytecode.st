as yet unclassified
stepToBoNextBytecode

	self 
		stepUntil: (self createPredicateForBlock: [ :ctx |
			ctx pc = ctx method initialPC and:  [ctx selector = #interpret] ])
		from: self interruptedContext.
	self interruptedProcess stepToSendOrReturn. 
	self updateContextTo: self interruptedProcess suspendedContext.
	self contextChanged.
