# Common-source Input-referred White Noise Optimization



This repository presents various examples of analog CMOS circuit design. It is focused on the use of the EKV MOSFET model and the related inversion coefficient approach. The repository includes Quarto or Jupyter notebooks that you can download and run on your own computer.

I now have added schematics with qucs-s. You can run the same ngspice simulation for the latest design directly from the qucs-s schematic editor and visualize the results.

> [!NOTE]
> This assumes that you have the same (or similar) [environment](Installation.md) than the one I have installed on my Windows 11 machines.

The repository is structured in the following Chapters.

## Amplifiers

### [Single transistor gain stage (Basic)](Amplifiers/Basic/)

In this directory you will find the design of various single transistor gain stages.

It currently includes:
* [Common-source stage in open-loop configuration](Amplifiers/Basic/CS%20OL%20Optimization/) ([pdf](Amplifiers/Basic/CS%20OL%20Optimization/CS_OL_optimization_with_CF.pdf)) ([sch for GBW](Amplifiers/Basic/CS%20OL%20Optimization/Simulations/qucs-s/Optimization%20for%20GBW/)).
* [Common-source stage with capacitive feedback](Amplifiers/Basic/CS%20CL%20Optimization/) ([pdf](Amplifiers/Basic/CS%20CL%20Optimization/CS_CL_optimization.pdf)) ([sch for Adc and GBW](Amplifiers/Basic/CS%20OL%20Optimization/Simulations/qucs-s/Optimization%20for%20Adc%20and%20GBW)).
