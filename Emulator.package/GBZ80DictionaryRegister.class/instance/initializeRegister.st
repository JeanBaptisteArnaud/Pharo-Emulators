structure
initializeRegister
	registers := Dictionary new.
	registers at: #a put: (GBRegister8bits newFor: flags named: 'a').
	registers at: #b put: (GBRegister8bits newFor: flags named: 'b').
	registers at: #c put:  (GBRegister8bits newFor: flags named: 'c').
	registers at: #d put:  (GBRegister8bits newFor: flags named: 'd').
	registers at: #e put:  (GBRegister8bits newFor: flags named: 'e').
	registers at: #h put:  (GBRegister8bits newFor: flags named: 'h').
	registers at: #l put:  (GBRegister8bits newFor: flags named: 'l').
	registers at: #sp put: (GBRegister16Bits newFor: flags named: 'sp'). 
	registers at: #pc put: (GBRegister16Bits newFor: flags named: 'pc').
	registers at: #hl put: (self h union: self l).
	registers at: #bc put: (self b union: self c).
	registers at: #de put: (self d union: self e).
	registers at: #af put: (self a union: flags asRegister).
	super initializeRegister.