Version 4
SymbolType CELL
LINE Normal 16 0 16 64
LINE Normal 20 16 28 16
LINE Normal 20 48 28 48
LINE Normal 24 20 24 12
LINE Normal 63 20 63 12
LINE Normal 67 16 63 20
LINE Normal 63 12 67 16
LINE Normal 80 16 67 16
LINE Normal 63 16 48 16
LINE Normal 16 16 0 16
LINE Normal 16 48 0 48
LINE Normal 67 52 67 44
LINE Normal 63 48 67 52
LINE Normal 67 44 63 48
LINE Normal 48 48 63 48
LINE Normal 67 48 80 48
LINE Normal 56 20 16 0
LINE Normal 56 44 56 20
LINE Normal 16 64 56 44
LINE Normal 64 32 56 32
LINE Normal 64 35 64 29
LINE Normal 67 32 64 35
LINE Normal 64 29 67 32
WINDOW 0 32 0 Left 2
WINDOW 3 16 32 Left 2
SYMATTR Value Gm=1u
SYMATTR Prefix X
SYMATTR Description Macromodel of a fully-differential OTA with I-V characteristic of diff pair in strong inversion including thermal and flicker noise
SYMATTR SpiceModel OTAmos
SYMATTR ModelFile analog.lib
SYMATTR Value2 A0=1000 fp=100MEG
SYMATTR SpiceLine Vios=0m Visat=100m
SYMATTR SpiceLine2 Cid=10f Cic=10f gamma=2 fcorner=100k
PIN 0 16 NONE 0
PINATTR PinName in+
PINATTR SpiceOrder 1
PIN 0 48 NONE 0
PINATTR PinName in-
PINATTR SpiceOrder 2
PIN 80 16 NONE 0
PINATTR PinName out+
PINATTR SpiceOrder 3
PIN 80 48 NONE 0
PINATTR PinName out-
PINATTR SpiceOrder 4
