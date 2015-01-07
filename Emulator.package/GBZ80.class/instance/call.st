tools
call
	| destination |
	destination := self wordMemoryAtPc.
	self  setWordMemoryAtSpForCall: (self pc value).
	self pc set: destination