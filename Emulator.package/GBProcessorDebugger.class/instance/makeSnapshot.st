as yet unclassified
makeSnapshot
	|  value ord |
	value := (slotsToDebug collect: [:selector | (target perform: selector) printString]) asOrderedCollection .
	
	ord := OrderedCollection new.
	ord add: value first.
	(value copy removeFirst;yourself) do:[:e | ord add: '|'. ord add: e].
	
	historySpec listItems add: ord afterIndex:1
	"historySpec refreshListItems."