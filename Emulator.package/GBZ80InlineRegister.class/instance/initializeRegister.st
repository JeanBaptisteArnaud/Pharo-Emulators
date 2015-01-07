structure
initializeRegister
	a := (GBRegister8bits newFor: flags named: 'a').
	 b :=  (GBRegister8bits newFor: flags named: 'b').
	 c :=   (GBRegister8bits newFor: flags named: 'c').
	 d :=   (GBRegister8bits newFor: flags named: 'd').
	 e :=   (GBRegister8bits newFor: flags named: 'e').
	 h :=   (GBRegister8bits newFor: flags named: 'h').
	 l :=   (GBRegister8bits newFor: flags named: 'l').
	 sp :=  (GBRegister16Bits newFor: flags named: 'sp').
	 pc :=  (GBRegister16Bits newFor: flags named: 'pc').
	 hl :=  (self h union: self l).
	 bc :=  (self b union: self c).
	 de :=  (self d union: self e).
	 af :=  (self a union: flags asRegister).
	super initializeRegister.
