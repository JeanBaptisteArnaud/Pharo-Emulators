as yet unclassified
load: anString
	| inst |
	inst := self new.
	inst roms: (StandardFileStream fileNamed: anString) binary contents.
	^inst