accessing
+ aValue
	| result | 
	result := ((register1 value <<8 + register2 value) + aValue).
	register2 value:  (2r11111111 bitAnd: result).
	register1 value:  (result>>8).