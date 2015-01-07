creation
createAllOpCodesForProcessor: proc
	|array extendedArray |
	array := Array new: 257.
	extendedArray := Array new: 256.
	self allSubclassesDo: [:e  | 
		(e respondsTo: #createOpCodesInto:withProcessor:) ifTrue:[
			e createOpCodesInto: array withProcessor: proc. ].
		(e respondsTo: #createExtendedOpCodesInto:withProcessor:) ifTrue:[
			e createExtendedOpCodesInto: extendedArray withProcessor: proc.].
		 ].
	
	proc opCodesTable: array.
	proc extendedOpCodesTable: extendedArray.