tools
return
	self pc set: (self wordMemoryAt: (self sp value)).
 	self sp increment  increment.
	