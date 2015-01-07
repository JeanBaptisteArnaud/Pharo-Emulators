public
start
	mainProcess := [ self exec ] newProcess name: 'Gameboy Processor Loop'; priority: 35; yourself. 
	mainProcess resume.
	^mainProcess 