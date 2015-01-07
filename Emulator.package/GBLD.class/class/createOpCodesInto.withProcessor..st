as yet unclassified
createOpCodesInto: anArray withProcessor: aProcessor
	
	"GBLDBCnn check"
	anArray at: 2 put: ( self newInstruction: 2 forProcessor: aProcessor withArg: {[aProcessor wordMemoryAtPc]. aProcessor bc} tick: 12).

	"GBLDBCmA"
	anArray at: 3 put: ( self newInstruction: 3 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAt: (aProcessor bc value) to: arg] }tick: 8).

	"GBLDrn_b"
	anArray at: 7 put: ( self newInstruction: 7 forProcessor: aProcessor withArg: {[ aProcessor memoryAtPc]. aProcessor b. }tick: 8).

	"GBLDmmSP"
	anArray at: 9 put: ( self newInstruction: 9 forProcessor: aProcessor withArg: { }tick: 20).

	"GBLDrn_c"
	anArray at: 15 put: ( self newInstruction: 15 forProcessor: aProcessor withArg: {[ aProcessor memoryAtPc]. aProcessor c. } tick: 8).

	"GBLDDEnn"
	anArray at: 18 put: ( self newInstruction: 18 forProcessor: aProcessor withArg: {[aProcessor wordMemoryAtPc]. aProcessor de } tick: 12).

	"GBLDDEmA"
	anArray at: 19 put: ( self newInstruction: 19 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAt: (aProcessor de value) to: arg] }tick: 8).

	"GBLDrn_d"
	anArray at: 23 put: ( self newInstruction: 23 forProcessor: aProcessor withArg: {[ aProcessor memoryAtPc]. aProcessor d. }tick: 8).

	"GBLDrn_e"
	anArray at: 31 put: ( self newInstruction: 31 forProcessor: aProcessor withArg: {[ aProcessor memoryAtPc]. aProcessor e.  }tick: 8).

	"GBLDHLnn"
	anArray at: 34 put: ( self newInstruction: 34 forProcessor: aProcessor withArg: {[aProcessor wordMemoryAtPc]. aProcessor hl}tick: 12).

	"GBLDHLIA"
	anArray at: 35 put: ( self newInstruction: 35 forProcessor: aProcessor withArg: {aProcessor a. [:arg  | aProcessor setMemoryAtHLAndIncrement: arg ] }tick: 8).

	"GBLDrn_h"
	anArray at: 39 put: ( self newInstruction: 39 forProcessor: aProcessor withArg: {[ aProcessor memoryAtPc]. aProcessor h. }tick: 8).

	"GBLDrn_l"
	anArray at: 47 put: ( self newInstruction: 47 forProcessor: aProcessor withArg: { [ aProcessor memoryAtPc]. aProcessor l. }tick: 8).

	"GBLDSPnn"
	anArray at: 50 put: ( self newInstruction: 50 forProcessor: aProcessor withArg: { [aProcessor wordMemoryAtPc]. aProcessor sp.}tick: 12).

	"GBLDHLDA"
	anArray at: 51 put: ( self newInstruction: 51 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAtHLAndDecrement: arg]. }tick: 8).

	"GBLDHLmn"
	anArray at: 55 put: ( self newInstruction: 55 forProcessor: aProcessor withArg: {[ aProcessor memoryAtPc]. [:arg |  aProcessor setMemoryAtHL: arg ] }tick: 12).

	"GBLDrn_a"
	anArray at: 63 put: ( self newInstruction: 63 forProcessor: aProcessor withArg: {[ aProcessor memoryAtPc]. aProcessor a. }tick: 8).

	"GBLDrr_bb"
	anArray at: 65 put: ( self newInstruction: 65 forProcessor: aProcessor withArg: {aProcessor b. aProcessor b. }tick: 4).

	"GBLDrr_bc"
	anArray at: 66 put: ( self newInstruction: 66 forProcessor: aProcessor withArg: {aProcessor c. aProcessor b. }tick: 4).

	"GBLDrr_bd"
	anArray at: 67 put: ( self newInstruction: 67 forProcessor: aProcessor withArg: {aProcessor d. aProcessor b. }tick: 4).

	"GBLDrr_be"
	anArray at: 68 put: ( self newInstruction: 68 forProcessor: aProcessor withArg: {aProcessor e. aProcessor b. }tick: 4).

	"GBLDrr_bh"
	anArray at: 69 put: ( self newInstruction: 69 forProcessor: aProcessor withArg: {aProcessor h. aProcessor b. }tick: 4).

	"GBLDrr_bl"
	anArray at: 70 put: ( self newInstruction: 70 forProcessor: aProcessor withArg: {aProcessor l. aProcessor b. }tick: 4).

	"GBLDrHLm_b"
	anArray at: 71 put: ( self newInstruction: 71 forProcessor: aProcessor withArg: {aProcessor b. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDrr_ba"
	anArray at: 72 put: ( self newInstruction: 72 forProcessor: aProcessor withArg: {aProcessor a. aProcessor b. }tick: 4).

	"GBLDrr_cb"
	anArray at: 73 put: ( self newInstruction: 73 forProcessor: aProcessor withArg: {aProcessor b. aProcessor c. }tick: 4).

	"GBLDrr_cc"
	anArray at: 74 put: ( self newInstruction: 74 forProcessor: aProcessor withArg: {aProcessor c. aProcessor c. }tick: 4).

	"GBLDrr_cd"
	anArray at: 75 put: ( self newInstruction: 75 forProcessor: aProcessor withArg: {aProcessor d. aProcessor c. }tick: 4).

	"GBLDrr_ce"
	anArray at: 76 put: ( self newInstruction: 76 forProcessor: aProcessor withArg: {aProcessor e. aProcessor c. }tick: 4).

	"GBLDrr_ch"
	anArray at: 77 put: ( self newInstruction: 77 forProcessor: aProcessor withArg: {aProcessor h. aProcessor c. }tick: 4).

	"GBLDrr_cl"
	anArray at: 78 put: ( self newInstruction: 78 forProcessor: aProcessor withArg: {aProcessor l. aProcessor c. }tick: 4).

	"GBLDrHLm_c"
	anArray at: 79 put: ( self newInstruction: 79 forProcessor: aProcessor withArg: {aProcessor c. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDrr_ca"
	anArray at: 80 put: ( self newInstruction: 80 forProcessor: aProcessor withArg: {aProcessor a. aProcessor c }tick: 4).

	"GBLDrr_db"
	anArray at: 81 put: ( self newInstruction: 81 forProcessor: aProcessor withArg: {aProcessor b. aProcessor d. }tick: 4).

	"GBLDrr_dc"
	anArray at: 82 put: ( self newInstruction: 82 forProcessor: aProcessor withArg: {aProcessor c. aProcessor d. }tick: 4).

	"GBLDrr_dd"
	anArray at: 83 put: ( self newInstruction: 83 forProcessor: aProcessor withArg: { aProcessor d. aProcessor d.}tick: 4).

	"GBLDrr_de"
	anArray at: 84 put: ( self newInstruction: 84 forProcessor: aProcessor withArg: {aProcessor e. aProcessor d. }tick: 4).

	"GBLDrr_dh"
	anArray at: 85 put: ( self newInstruction: 85 forProcessor: aProcessor withArg: {aProcessor h. aProcessor d. }tick: 4).

	"GBLDrr_dl"
	anArray at: 86 put: ( self newInstruction: 86 forProcessor: aProcessor withArg: {aProcessor l. aProcessor d. }tick: 4).

	"GBLDrHLm_d"
	anArray at: 87 put: ( self newInstruction: 87 forProcessor: aProcessor withArg: {[aProcessor memoryAtHL].aProcessor d. }tick: 12).

	"GBLDrr_da"
	anArray at: 88 put: ( self newInstruction: 88 forProcessor: aProcessor withArg: {aProcessor a. aProcessor d }tick: 4).

	"GBLDrr_eb"
	anArray at: 89 put: ( self newInstruction: 89 forProcessor: aProcessor withArg: {aProcessor b. aProcessor e }tick: 4).

	"GBLDrr_ec"
	anArray at: 90 put: ( self newInstruction: 90 forProcessor: aProcessor withArg: {aProcessor c. aProcessor e }tick: 4).

	"GBLDrr_ed"
	anArray at: 91 put: ( self newInstruction: 91 forProcessor: aProcessor withArg: {aProcessor d. aProcessor e}tick: 4).

	"GBLDrr_ee"
	anArray at: 92 put: ( self newInstruction: 92 forProcessor: aProcessor withArg: {aProcessor e. aProcessor e }tick: 4).

	"GBLDrr_eh"
	anArray at: 93 put: ( self newInstruction: 93 forProcessor: aProcessor withArg: { aProcessor h. aProcessor e}tick: 4).

	"GBLDrr_el"
	anArray at: 94 put: ( self newInstruction: 94 forProcessor: aProcessor withArg: {aProcessor l. aProcessor e}tick: 4).

	"GBLDrHLm_e"
	anArray at: 95 put: ( self newInstruction: 95 forProcessor: aProcessor withArg: {[aProcessor memoryAtHL]. aProcessor e }tick: 12).

	"GBLDrr_ea"
	anArray at: 96 put: ( self newInstruction: 96 forProcessor: aProcessor withArg: {aProcessor a. aProcessor e}tick: 4).

	"GBLDrr_hb"
	anArray at: 97 put: ( self newInstruction: 97 forProcessor: aProcessor withArg: {aProcessor b. aProcessor h}tick: 4).

	"GBLDrr_hc"
	anArray at: 98 put: ( self newInstruction: 98 forProcessor: aProcessor withArg: {aProcessor c. aProcessor h}tick: 4).

	"GBLDrr_hd"
	anArray at: 99 put: ( self newInstruction: 99 forProcessor: aProcessor withArg: {aProcessor d. aProcessor h}tick: 4).

	"GBLDrr_he"
	anArray at: 100 put: ( self newInstruction: 100 forProcessor: aProcessor withArg: {aProcessor e. aProcessor h }tick: 4).

	"GBLDrr_hh"
	anArray at: 101 put: ( self newInstruction: 101 forProcessor: aProcessor withArg: {aProcessor h. aProcessor h}tick: 4).

	"GBLDrr_hl"
	anArray at: 102 put: ( self newInstruction: 102 forProcessor: aProcessor withArg: {aProcessor l. aProcessor h}tick: 4).

	"GBLDrHLm_h"
	anArray at: 103 put: ( self newInstruction: 103 forProcessor: aProcessor withArg: {aProcessor h. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDrr_ha"
	anArray at: 104 put: ( self newInstruction: 104 forProcessor: aProcessor withArg: {aProcessor a. aProcessor h }tick: 4).

	"GBLDrr_lb"
	anArray at: 105 put: ( self newInstruction: 105 forProcessor: aProcessor withArg: {aProcessor b. aProcessor l}tick: 4).

	"GBLDrr_lc"
	anArray at: 106 put: ( self newInstruction: 106 forProcessor: aProcessor withArg: {aProcessor c. aProcessor l}tick: 4).

	"GBLDrr_ld"
	anArray at: 107 put: ( self newInstruction: 107 forProcessor: aProcessor withArg: {aProcessor d. aProcessor l}tick: 4).

	"GBLDrr_le"
	anArray at: 108 put: ( self newInstruction: 108 forProcessor: aProcessor withArg: {aProcessor e. aProcessor l}tick: 4).

	"GBLDrr_lh"
	anArray at: 109 put: ( self newInstruction: 109 forProcessor: aProcessor withArg: {aProcessor h. aProcessor l}tick: 4).

	"GBLDrr_ll"
	anArray at: 110 put: ( self newInstruction: 110 forProcessor: aProcessor withArg: {aProcessor l. aProcessor l}tick: 4).

	"GBLDrHLm_l"
	anArray at: 111 put: ( self newInstruction: 111 forProcessor: aProcessor withArg: {aProcessor l. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDrr_la"
	anArray at: 112 put: ( self newInstruction: 112 forProcessor: aProcessor withArg: {aProcessor a. aProcessor l}tick: 4).

	"GBLDHLmr_b"
	anArray at: 113 put: ( self newInstruction: 113 forProcessor: aProcessor withArg: {aProcessor b. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDHLmr_c"
	anArray at: 114 put: ( self newInstruction: 114 forProcessor: aProcessor withArg: {aProcessor c. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDHLmr_d"
	anArray at: 115 put: ( self newInstruction: 115 forProcessor: aProcessor withArg: {aProcessor d. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDHLmr_e"
	anArray at: 116 put: ( self newInstruction: 116 forProcessor: aProcessor withArg: {aProcessor e. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDHLmr_h"
	anArray at: 117 put: ( self newInstruction: 117 forProcessor: aProcessor withArg: {aProcessor h. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDHLmr_l"
	anArray at: 118 put: ( self newInstruction: 118 forProcessor: aProcessor withArg: {aProcessor l. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDHLmr_a"
	anArray at: 120 put: ( self newInstruction: 120 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDrr_ab"
	anArray at: 121 put: ( self newInstruction: 121 forProcessor: aProcessor withArg: {aProcessor b. aProcessor a }tick: 4).

	"GBLDrr_ac"
	anArray at: 122 put: ( self newInstruction: 122 forProcessor: aProcessor withArg: {aProcessor c. aProcessor a }tick: 4).
	
	"GBLDrr_ad"
	anArray at: 123 put: ( self newInstruction: 123 forProcessor: aProcessor withArg: {aProcessor d. aProcessor a }tick: 4).
	
	"GBLDrr_ae"
	anArray at: 124 put: ( self newInstruction: 124 forProcessor: aProcessor withArg: {aProcessor e. aProcessor a }tick: 4).

	"GBLDrr_ah"
	anArray at: 125 put: ( self newInstruction: 125 forProcessor: aProcessor withArg: {aProcessor h. aProcessor a }tick: 4).

	"GBLDrr_al"
	anArray at: 126 put: ( self newInstruction: 126 forProcessor: aProcessor withArg: {aProcessor l. aProcessor a }tick: 4).

	"GBLDrHLm_a"
	anArray at: 127 put: ( self newInstruction: 127 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAtHL: arg] }tick: 12).

	"GBLDrr_aa"
	anArray at: 128 put: ( self newInstruction: 128 forProcessor: aProcessor withArg: {aProcessor a. aProcessor a}tick: 4).

	"GBLDIOnA"
	anArray at: 225 put: ( self newInstruction: 225 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAtFFPc: arg]. }tick: 8).
	"GBLDIOCA"
	anArray at: 227 put: ( self newInstruction: 227 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAt: (16rff00 + aProcessor c value) to: arg]. }tick: 8).

	"GBLDmmA"
	anArray at: 235 put: ( self newInstruction: 235 forProcessor: aProcessor withArg: {aProcessor a. [:arg | aProcessor setMemoryAtNextPc: arg]. }tick: 16).

	"GBLDHLSPn"
	anArray at: 249 put: ( self newInstruction: 249 forProcessor: aProcessor withArg: { }tick: 8).

	"GBLDA"
	"GBLDABCm" 
	anArray at: 11 put: ( self newInstruction: 11 forProcessor: aProcessor withArg: { }tick: 8).

	"GBLDADEm"
	anArray at: 27 put: ( self newInstruction: 27 forProcessor: aProcessor withArg: {[ aProcessor memoryAt: (aProcessor de value)] . aProcessor a}tick: 8).

	"GBLDAHLI"
	anArray at: 43 put: ( self newInstruction: 43 forProcessor: aProcessor withArg: {[aProcessor memoryAtHLAndIncrement ].  aProcessor a }tick: 8).

	"GBLDAHLD"
	anArray at: 59 put: ( self newInstruction: 59 forProcessor: aProcessor withArg: { }tick: 8).

	"GBLDAIOn"
	anArray at: 241 put: ( self newInstruction: 241 forProcessor: aProcessor withArg: {[aProcessor memoryAtFFPc]. aProcessor a }tick: 8).

	"GBLDAIOC"
	anArray at: 243 put: ( self newInstruction: 243 forProcessor: aProcessor withArg: {aProcessor a. [:arg |  aProcessor setMemoryAtFFC: arg ].  }tick: 8).
	
	"LDSPHL" 
	anArray at: 250 put: ( self newInstruction: 250 forProcessor: aProcessor withArg: {aProcessor sp. aProcessor hl }tick: 8).
	
	"GBLDAmm"
	anArray at: 251 put: ( self newInstruction: 251 forProcessor: aProcessor withArg: {[aProcessor memoryAtmemoryAtPc.]. aProcessor a }tick: 20).

	

	