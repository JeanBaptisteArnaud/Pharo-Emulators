as yet unclassified
rl
	"rotate with carry"
	previousValue := value. 
	value := (value << 1) bitAnd: 2r11111110.
	flag C ifTrue: [value := value + 1].
	(((previousValue >> 7) bitAnd: 1) = 1)
		ifTrue:[flag setC] 
		ifFalse:[flag resetC].
	