infrastructure
constructAllTabulation
	| value |
	value := {#graphics. #IO. #Roms}.
	value do: [:e | tab addTab: e asString
			withAction: [ self get: e]].