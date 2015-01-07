Extract::Data::Byte
newGameBoyColor
	self newGameBoyColorCode = 16r80 ifTrue:[^'supported on old GB '].     "- Game supports CGB functions, but works on old gameboys also."
	self newGameBoyColorCode = 16rC0 ifTrue:[^'only supported by GBC ']. "- Game works on CGB only (physically the same as 80h)."
^'check your rom'