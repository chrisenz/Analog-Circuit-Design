Version 4
SymbolType CELL
LINE Normal -32 32 17 64
LINE Normal -32 96 17 64
LINE Normal -32 32 -32 96
LINE Normal -28 48 -20 48
LINE Normal -28 80 -20 80
LINE Normal -24 52 -24 44
LINE Normal -48 48 -32 48
LINE Normal -48 80 -32 80
LINE Normal -8 56 0 64
LINE Normal -16 64 -8 56
LINE Normal -8 72 -16 64
LINE Normal 0 64 -8 72
LINE Normal -10 60 -6 60
LINE Normal -10 67 -6 67
LINE Normal -8 65 -8 69
LINE Normal -8 48 32 48
LINE Normal -8 80 32 80
LINE Normal -8 56 -8 48
LINE Normal -8 72 -8 80
LINE Normal 32 64 17 64
WINDOW 0 -16 32 Left 2
WINDOW 3 -16 96 Left 2
SYMATTR Value A0=100k
SYMATTR Prefix X
SYMATTR Description Ideal fully-differential ideal op-amp with separate out common-mode voltage
SYMATTR SpiceModel Av_diff_cm
SYMATTR ModelFile analog.lib
PIN -48 48 NONE 0
PINATTR PinName in+
PINATTR SpiceOrder 1
PIN -48 80 NONE 0
PINATTR PinName in-
PINATTR SpiceOrder 2
PIN 32 80 NONE 8
PINATTR PinName out+
PINATTR SpiceOrder 3
PIN 32 48 NONE 8
PINATTR PinName out-
PINATTR SpiceOrder 4
PIN 32 64 NONE 8
PINATTR PinName out_cm
PINATTR SpiceOrder 5
