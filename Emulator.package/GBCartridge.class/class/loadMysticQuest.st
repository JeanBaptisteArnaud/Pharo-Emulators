as yet unclassified
loadMysticQuest
	| inst |
	inst := self new.
	inst roms: (StandardFileStream fileNamed: 'mystic quest.gb') binary contents.
	^inst