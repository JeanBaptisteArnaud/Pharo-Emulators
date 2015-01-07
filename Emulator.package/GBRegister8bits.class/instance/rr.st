as yet unclassified
rr

	"rotate without carry"
	previousValue := value.
	value := value >> 1. 
	flag C ifTrue: [value := value + (1<<7)].
	((previousValue bitAnd: 1) = 1) 
		ifTrue:[flag setC.] 
		ifFalse:[flag resetC].
	
	
	
	
