process management
frame
	engine endFrame: false.
  	[engine endFrame not  and: [processor isPause not]]
		whileTrue: [
			engine processorTicks: processor debugInterpret.
			processor flags ime ifTrue:[interrupt raise].
			engine control.
			
			].
	