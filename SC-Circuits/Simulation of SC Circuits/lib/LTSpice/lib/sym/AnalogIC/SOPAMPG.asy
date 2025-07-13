Version 4
SymbolType CELL
LINE Normal 8 0 0 0
LINE Normal 8 3 8 0
LINE Normal 16 7 8 3
LINE Normal 24 7 16 7
LINE Normal 24 -8 72 24
LINE Normal 24 56 24 -8
LINE Normal 72 24 24 56
LINE Normal 8 16 0 16
LINE Normal 8 13 8 16
LINE Normal 33 7 27 7
LINE Normal 30 36 30 42
LINE Normal 33 39 27 39
LINE Normal 80 24 72 24
LINE Normal 87 19 80 24
LINE Normal 87 16 87 19
LINE Normal 96 16 87 16
LINE Normal 87 32 96 32
LINE Normal 87 29 87 32
LINE Normal 0 39 24 39
LINE Normal 0 48 0 39
TEXT -4 0 Right 0 phi1
TEXT -4 16 Right 0 phi2
TEXT 100 32 Left 0 phi2
TEXT 100 16 Left 0 phi1
TEXT 0 54 Center 0 should be grounded
WINDOW 0 48 0 Left 2
WINDOW 3 48 48 Left 2
SYMATTR Value Av=100k
SYMATTR Prefix X
SYMATTR Description Switched ideal op-amp with grounded positive
SYMATTR ModelFile analog.lib
SYMATTR SpiceModel SOPAMPG
PIN 0 48 NONE 8
PINATTR PinName in+
PINATTR SpiceOrder 1
PIN 0 0 NONE 0
PINATTR PinName in-p1
PINATTR SpiceOrder 2
PIN 96 16 NONE 8
PINATTR PinName outp1
PINATTR SpiceOrder 3
PIN 0 16 NONE 0
PINATTR PinName in-p2
PINATTR SpiceOrder 4
PIN 96 32 NONE 8
PINATTR PinName outp2
PINATTR SpiceOrder 5
