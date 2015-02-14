initialization
keyDown: value
	self perform: (shortcutTableDown at: value scanCode  + 1).