debugSupport
initialize
	installedOpcode := OrderedCollection new.
	z80 := GBZ80InlineRegister new.
	^super initialize