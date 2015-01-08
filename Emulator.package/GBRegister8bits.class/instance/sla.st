as yet unclassified
sla
	self flag C: (((value << 1) bitAnd: 2r100000000) = 1).
	value := ((value << 1) bitAnd: 2r11111111).