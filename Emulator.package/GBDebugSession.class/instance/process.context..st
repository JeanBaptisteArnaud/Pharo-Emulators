as yet unclassified
process: aProcess context: aContext
	|isInitialStep|
	
	isInitialStep := self interruptedContext isNil.
	super process: aProcess context: aContext.
	isInitialStep ifTrue: [  
		self stepToBoNextBytecode ]
	