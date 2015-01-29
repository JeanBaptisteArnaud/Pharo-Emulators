drawing - background
drawLine
	(self LY = 0) ifTrue:[
		currentWinLine := 0.
		"tiles memory changed ?"
	 	tilesDirty ifTrue:[self updateTiles].
		"back memory changed ?"
		backgroundDirty ifTrue:[self forceUpdateBackground].].