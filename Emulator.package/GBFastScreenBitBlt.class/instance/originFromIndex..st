bitblt
originFromIndex: index
	^(((index -1) \\ 32)*8)@(((index-1) // 32)*8).