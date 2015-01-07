as yet unclassified
jumpTo: aDestination
	cpu setWordMemoryAtSpForCall: cpu pc value.
	cpu setPc: aDestination.
	engine incrementProcessorTicks: 32.
	
