Version 4
SymbolType CELL
LINE Normal -48 16 -48 16
LINE Normal 4 2 -3 -7
LINE Normal 4 8 -3 -1
LINE Normal 2 -5 -2 -2
RECTANGLE Normal 48 32 -48 -32
ARC Normal -17 -10 -1 6 -3 -7 -18 -2
ARC Normal 18 5 2 -11 4 2 19 -3
ARC Normal -17 -4 -1 12 -3 -1 -18 4
ARC Normal 18 11 2 -5 4 8 19 3
TEXT 0 -25 Center 0 2nd-order LP Sallen-Key
WINDOW 38 0 -38 Center 1
WINDOW 3 -1 43 Center 1
SYMATTR SpiceModel aRCLPSK
SYMATTR Value f0=1k Q=1 R=1k A0=100k
SYMATTR Prefix X
SYMATTR Description 2nd-order LP active-RC Sallen-Key section
SYMATTR ModelFile analog.lib
PIN -48 0 NONE 8
PINATTR PinName in
PINATTR SpiceOrder 1
PIN 48 0 NONE 8
PINATTR PinName out
PINATTR SpiceOrder 2
