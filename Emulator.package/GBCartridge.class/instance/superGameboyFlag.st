Extract::Data::Byte
superGameboyFlag

(currentReadBank at: 16r0148) = 16r00 ifTrue:[^' Do not support superGameboy']. 	"No SGB functions (Normal Gameboy or CGB only game)"
(currentReadBank at: 16r0148) = 16r03 ifTrue:[^' Game support superGameboy']. 	"Game supports SGB functions"
^'check your rom'