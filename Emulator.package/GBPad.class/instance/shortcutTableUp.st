initialization
shortcutTableUp
	^shortcutTableUp ifNil: [shortcutTableUp := Array new: 256. self initializeShortcut.shortcutTableUp]