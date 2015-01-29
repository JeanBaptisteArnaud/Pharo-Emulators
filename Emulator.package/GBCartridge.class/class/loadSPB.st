as yet unclassified
loadSPB
	| inst |
	inst := self new.
	inst roms: (StandardFileStream fileNamed: 'SuperMarioLand.gb') binary contents asArray.
	^inst