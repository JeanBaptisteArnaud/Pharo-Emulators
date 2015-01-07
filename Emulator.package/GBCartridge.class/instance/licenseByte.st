Extract::Data::Byte
licenseByte
	^self isNewRom ifTrue:[self newLicenseType] ifFalse:[self oldLicenseTypeByte].