as yet unclassified
loadTetris
	| inst |
	inst := self new.
	inst roms: (StandardFileStream fileNamed: 'tetris.gb') binary contents asArray.
	^inst