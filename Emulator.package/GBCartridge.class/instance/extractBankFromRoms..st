extract::bank
extractBankFromRoms: anArray
	| currentBank index |
	currentReadBank := currentBank := GBReadOnlyBanks new.
	index := 1.
	anArray do:[:each | 
		(index = (self bankSize + 1)) 
			ifTrue:[currentBank := self registerNewWritableBank. 
					index := 1.].
		currentBank at: index put: each.
		index := index + 1.].
	currentWriteBank := banks at:1.