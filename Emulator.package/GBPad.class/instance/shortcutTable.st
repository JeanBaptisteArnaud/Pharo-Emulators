initialization
shortcutTable
	^shortcutTable ifNil: [shortcutTable := Array new: 256. self initializeShortcut.shortcutTable]