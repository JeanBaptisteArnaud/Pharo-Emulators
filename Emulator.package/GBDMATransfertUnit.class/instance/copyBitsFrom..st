as yet unclassified
copyBitsFrom: value
	| sourceIndex |
	sourceIndex := value.
	16rFE00 to: 16rFE9F do:[:destinationIndex| 
		memoryMap wb: destinationIndex value:(memoryMap rb: sourceIndex).
		sourceIndex := sourceIndex + 1.].