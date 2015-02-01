API
spriteFlags: value
	"index in array + 1 of array(ST) + 3 index of Flags"
	^self at: ((value - 1) * 4) + 4 