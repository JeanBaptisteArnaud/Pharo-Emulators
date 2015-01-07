initialize-release
initializeBios
	1 to: 16r100 do: [:i | self at: i put: (self bios at: i) ].
