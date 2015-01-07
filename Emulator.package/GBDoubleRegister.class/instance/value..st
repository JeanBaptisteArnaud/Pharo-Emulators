accessing
value: aValue
	register2 value: (2r11111111 bitAnd: aValue).
	register1 value: (aValue>>8).
	
	