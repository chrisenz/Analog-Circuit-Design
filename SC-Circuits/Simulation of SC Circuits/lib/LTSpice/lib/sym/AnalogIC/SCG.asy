Version 4
SymbolType CELL
LINE Normal 16 30 0 30
LINE Normal 16 35 0 35
LINE Normal 0 9 0 0
LINE Normal 3 9 0 9
LINE Normal 8 22 3 9
LINE Normal 8 30 8 22
LINE Normal 16 9 16 0
LINE Normal 13 9 16 9
LINE Normal 8 48 8 35
LINE Normal 0 48 8 48
LINE Normal 0 64 0 48
TEXT -6 0 Right 0 phi1
TEXT 22 0 Left 0 phi2
TEXT 6 64 Left 0 Should be grounded
WINDOW 3 24 33 Left 2
WINDOW 123 24 47 Left 1
SYMATTR Value C=1p
SYMATTR Value2 fs=1k
SYMATTR Prefix X
SYMATTR SpiceModel SCG
SYMATTR Description Switched capacitor with one grounded node
SYMATTR ModelFile analog.lib
SYMATTR SpiceLine D=0.5
PIN 0 0 NONE 8
PINATTR PinName 1p1
PINATTR SpiceOrder 1
PIN 0 64 NONE 8
PINATTR PinName GND
PINATTR SpiceOrder 3
PIN 16 0 NONE 8
PINATTR PinName 1p2
PINATTR SpiceOrder 2
