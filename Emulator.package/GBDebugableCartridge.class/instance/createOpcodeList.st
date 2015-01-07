opcode
createOpcodeList
	| array size |
	size := banks size + 1.
	array := Array new: banks size + 1.
	"current Read Bank"
	array at: 1 put: (currentReadBank collect: [ :each |  self opCodeFor: each]).
	2 to: size do: [:index | 
		array at: index put: (currentReadBank collect: [ :each |  self opCodeFor: each])].
	
	^array