as yet unclassified
rlc
	"rotate without carry"
	previousValue := value.
	value := (value << 1) bitAnd: 2r11111110. 
	(((previousValue >> 7) bitAnd: 1) = 1)
		ifTrue:[flag setC.
			value := value + 1]
		ifFalse:[flag resetC].
	