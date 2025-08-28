# Optimization of a Common-source Stage in Open-loop

![CS OL Amplifier](/Amplifiers/Basic/CS%20OL%20Optimization/Figures/CS_OL_schematic.png)

This [Quarto notebook](/Amplifiers/Basic/CS%20OL%20Optimization/CS_OL_optimization_with_CF.pdf) shows how to minimize the current consumption of the above common-source (CS) amplifier in open-loop configuration. A first example is showing the optimization of the CS stage for a given gain-bandwidth product and a given transistor length. The second example is taking advantage of the additional degree of freedom on the transistor length to simultaneously optimize for a given DC gain and gain-bandwidth product.

The ngspice simulations are using the EKV 2.6 compact model with the parameters corresponding to a generic 180nm bulk CMOS process. For the simulations to work you should install ngspice following the ![ngspice installation instructions](/ngspice_installation.md).

We now also have added the [Qucs-s schematic](/Amplifiers/Basic/CS%20OL%20Optimization/Simulations/qucs-s/) using ngspice with the EKV2.6 compact model.
