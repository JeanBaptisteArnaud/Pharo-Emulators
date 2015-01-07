as yet unclassified
rrc

	"rotate without carry"
	previousValue := value.
	value := value >> 1.
	((previousValue bitAnd: 1) = 1)  
		ifTrue:[flag setC.
			value:= value + ((previousValue bitAnd: 1) << 7).] 
		ifFalse:[flag resetC].
