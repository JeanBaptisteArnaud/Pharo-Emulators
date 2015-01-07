slow memory access
wb: addr value: value 
	^self at: addr - 16rFF40 put: value