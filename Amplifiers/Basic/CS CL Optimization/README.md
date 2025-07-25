# Optimization of a Common-source Stage in Closed-loop

![CS CL Amplifier](/Amplifiers/Basic/CS%20CL%20Optimization/Figures/CS_CL_amplifier_schematic.png)

This Quarto notebook shows how to minimize the current consumption of the above common-source (CS) amplifier in closed-loop for achieving a given bandwidth. This example can be extended to a switched-capacitor amplifier using an OTA.

The ngspice simulations are using the EKV 2.6 compact model with the parameters corresponding to a generic 180nm bulk CMOS process. For the simulations to work you should install ngspice following the ![ngspice installation instructions](/ngspice_installation.md).
