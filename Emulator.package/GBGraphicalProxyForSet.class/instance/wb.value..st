as yet unclassified
wb: value value: arg
	notifier tilesAreDirtyAt: ((value - 32768)>>4).
	^memory wb: value value: arg
