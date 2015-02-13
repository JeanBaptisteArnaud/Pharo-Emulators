initialization
initializeEvents
	
	self on: #mouseDown send: #takeKeyboardFocus to: self.
	self on: #keyDown send: #keyDown: to: self.
	self on: #keyUp send: #keyUp: to: self.
	