as yet unclassified
openWithSpec
	| value ord |
	slotsToDebug isEmpty ifTrue:[^ Error signal: 'You do not set any slot to follow'].
	target = nil ifTrue:[^ Error signal: 'You do not set a target'].

	value := (slotsToDebug collect: [:e | e printString]) asOrderedCollection.
	ord := OrderedCollection new.
	ord add: value first.
	(value copy removeFirst;yourself) do:[:e | ord add: '|'. ord add: e].
	historySpec listItems add: ord.
	
	
	
	^super openWithSpec window position:  (544.0@11.0); yourself.