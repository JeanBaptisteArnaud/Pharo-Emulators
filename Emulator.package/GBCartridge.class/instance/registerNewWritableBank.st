Extract::Data
registerNewWritableBank
	banks := banks copyWith: GBWritableBanks new.
	^banks at: banks size.