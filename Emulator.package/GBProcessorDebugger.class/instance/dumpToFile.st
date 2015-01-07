as yet unclassified
dumpToFile
	| file |
	file := StandardFileStream forceNewFileNamed: 'Dump.log'.
	history do:[:e | file nextPutAll: (self buildStringFor: e).
		file cr].
	file close