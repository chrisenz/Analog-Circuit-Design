# Common-source Input-referred White Noise Optimization

![CS OL Amplifier](/Amplifiers/Basic/CS%20OL%20Noise%20Optimization/Figures/CS_OL_schematic.png)

This [Quarto notebook](/Amplifiers/Basic/CS%20CL%20Optimization/CS_CL_optimization.pdf) shows how to minimize the current consumption of the above common-source (CS) amplifier in closed-loop for achieving a given bandwidth. This example can be extended to a switched-capacitor amplifier using an OTA.

The ngspice simulations are using the EKV 2.6 compact model with the parameters corresponding to a generic 180nm bulk CMOS process. For the simulations to work you should install ngspice following the ![ngspice installation instructions](/ngspice_installation.md).

We now also have added the [Qucs-s schematic](/Amplifiers/Basic/CS%20CL%20Optimization/Simulations/qucs-s/README.md) using ngspice with the EKV2.6 compact model.
