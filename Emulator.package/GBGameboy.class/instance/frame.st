as yet unclassified
frame
	engine endFrame: false.
  	[engine endFrame not  and: [processor isPause not]]
		whileTrue: [
			engine processorTicks: processor interpret.
			processor flags ime ifTrue:[interrupt raise].
			engine control.
			].