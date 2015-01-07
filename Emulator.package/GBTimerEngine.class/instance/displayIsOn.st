Timer
displayIsOn
	^(((screen LCDC)>>7) ~= 0)