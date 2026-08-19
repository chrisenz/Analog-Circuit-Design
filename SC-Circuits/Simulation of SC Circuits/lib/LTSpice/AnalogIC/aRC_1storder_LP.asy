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
TEXT 0 -25 Center 1 1st-order LP section
WINDOW 38 0 -38 Center 1
WINDOW 3 -1 43 Center 1
SYMATTR Prefix X
SYMATTR SpiceModel aRC1st
SYMATTR Description 1st-order LP active-RC filter section
SYMATTR ModelFile analog.lib
SYMATTR Value T0=1 fc=1k R=1k A0=100k
PIN -48 0 NONE 8
PINATTR PinName in
PINATTR SpiceOrder 1
PIN 48 0 NONE 8
PINATTR PinName out
PINATTR SpiceOrder 2
