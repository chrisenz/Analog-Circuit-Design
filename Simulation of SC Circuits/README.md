# AC simulation of SC circuits with a standard Spice simulator

This directory contains all the tools to do AC simulation of switched-capacitor (SC) circuits with LTSpice or ngspice. The quarto notebook explains the theory behind this technique and gives sevral SC filter examples. The LTSpice examples includes the schematic which can be captured in LTSpice using the dedicated library.

The library includes the following 4 symbols

1) Swithed-capacitor

![Switched-capacitor.](/img/SC.png)

This symbol should used for all capacitors in the circuit whether it is switched or not. The reason we need to use this symbol also for capacitors which are not switched (like the integrating capacitor between the output and virtual gound) is because the circuits during phases $\Phi_1$ and $\Phi_2$ should be fully separated and they are only coupled for ensuring the charge conservation.

2) Switched-capacitor with one side gounded

![Grounded switched-capacitor.](/img/SCG.png)

3) Switched-OPAMP

![Switched-OPAMP.](/img/SOPAMP.png)

4) Switched-OPAMP with positive input grounded

![Grounded switched-OPAMP.](/img/SOPAMPG.png)

