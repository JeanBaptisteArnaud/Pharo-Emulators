as yet unclassified
check
	processor flags zeroFlag: ((valueHandler value bitAt: (index + 1)) = 1) not.
	processor flags resetN;setH.