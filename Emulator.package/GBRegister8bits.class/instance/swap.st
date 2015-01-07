as yet unclassified
swap
	value := (value bitAnd: 2r11110000)>>4 + (value bitAnd: 2r00001111)<<4.  