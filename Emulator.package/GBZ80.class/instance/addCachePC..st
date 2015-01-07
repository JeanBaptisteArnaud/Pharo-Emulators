public
addCachePC: value
	lastTen addFirst: value.
	(lastTen size > 10) ifTrue:[lastTen removeLast].
	