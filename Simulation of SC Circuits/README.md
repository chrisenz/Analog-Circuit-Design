# AC simulation of SC circuits with a standard Spice simulator

This directory contains all the tools to do AC simulation of switched-capacitor (SC) circuits with LTSpice or ngspice. The quarto notebook explains the theory behind this technique and gives sevral SC filter examples. The LTSpice examples includes the schematic which can be captured in LTSpice using the ![dedicated library](/Simulation%20of%20SC%20Circuits/lib/LTSpice). Note that this library also incldes other models, symbols and subcircuits than the ones discussed below. The LTSpice library contains three directories: cmp, sub and sym. In order for the LTSpice examples to work, for Windows 11, you should place the lib directory in the user directory of LTSpice, for example C:\Users\<your name>\Documents\LTSpice.

The library includes the following 4 symbols:

## Switched-capacitor

![Switched-capacitor.](/img/SC.png)

This symbol should be used for all capacitors in the circuit whether it is switched or not. The reason we need to use this symbol also for capacitors which are not switched (like the integrating capacitor between the output and negative input of an OPAMP) is because the circuits during phases $\Phi_1$ and $\Phi_2$ should be fully separated and they are only coupled for ensuring the charge conservation between phase $\Phi_1$ and $\Phi_2$.

This symbol calls the following subcircuit:

.subckt SC 1p1 2p1 1p2 2p2\
\* Parameters:\
\* C=1p\
\* fs=1k\
\* D=0.5\
.param Req={1/(fs*C)} Gmeq={1/Req}\
R1 1p1 2p1 {Req}\
G1 2p1 1p1 1p2 2p2 Laplace=Gmeq*exp(-s*D/fs)\
R2 1p2 2p2 {Req}\
G2 2p2 1p2 1p1 2p1 Laplace=Gmeq*exp(-s*(1-D)/fs)\
.ends SC

This subcircuit corresponds to the two port network described in the ![quarto pdf file](/Simulation%20of%20SC%20Circuits/SCC_simulation.pdf). It couples phase $\Phi_1$ and $\Phi_2$ for ensuring charge conservation.

## Switched-capacitor with one side grounded

![Grounded switched-capacitor.](/img/SCG.png)

This symbol should be used for capacitors (switched or not) that have one node connected to ground. The ground is the only node that is common to the circuit of phase $\Phi_1$ and the circuit of phase $\Phi_2$. It calls the following subcircuit:

.subckt SCG 1p1 1p2 gnd\
\* Parameters:\
\* C=1p\
\* fs=1k\
\* D=0.5\
.param Req={1/(fs*C)} Gmeq={1/Req}\
R1 1p1 gnd {Req}\
G1 gnd 1p1 1p2 gnd Laplace=Gmeq*exp(-s*D/fs)\
R2 1p2 gnd {Req}\
G2 gnd 1p2 1p1 gnd Laplace=Gmeq*exp(-s*(1-D)/fs)\
.ends SCG

## Switched-OPAMP

![Switched-OPAMP.](/img/SOPAMP.png)

This symbol should be used for the OPAMP. It calls the following subcircuit:

.subckt SOPAMP in+p1 in-p1 outp1 in+p2 in-p2 outp2\
\* Parameters:\
\* Av=1E5\
E1 outp1 0 in+p1 in-p1 {Av}\
E2 outp2 0 in+p2 in-p2 {Av}\
.ends SOPAMP

## Switched-OPAMP with positive input grounded

![Grounded switched-OPAMP.](/img/SOPAMPG.png)

This symbol should be used for OPAMPs that have the positive input connected to ground. It calls the following subcircuit:

.subckt SOPAMPG in+ in-p1 outp1 in-p2 outp2\
\* Parameters:\
\* Av=1E5\
E1 outp1 0 in+ in-p1 {Av}\
E2 outp2 0 in+ in-p2 {Av}\
.ends SOPAMPG
