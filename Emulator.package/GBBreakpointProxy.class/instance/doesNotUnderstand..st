as yet unclassified
doesNotUnderstand: aMessage
	notifying 
		ifNil:[gb stop] 
		ifNotNil:[gb stopNotify: notifying].
	^aMessage sendTo: originalValue