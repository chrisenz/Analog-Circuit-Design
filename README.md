# Analog-Circuit-Design

This repository presents various examples of analog CMOS circuit design. It is focused on the use of the EKV MOSFET model and the related inversion coefficient approach. The repository includes Quarto or Jupyter notebooks that you can download and run on your own computer.

> [!NOTE]
> This assumes that you have the same (or similar) [environment](Installation.md) than the one I have installed on my Windows 11 machines.

The repository is structured in the following Chapters.

## Amplifiers

### [Single transistor gain stage (Basic)](Amplifiers/Basic/)

In this directory you will find the design of various single transistor gain stages.

It currently includes:
* [Common-source stage in open-loop configuration](Amplifiers/Basic/CS%20OL%20Optimization/) ([pdf](Amplifiers/Basic/CS%20OL%20Optimization/CS_OL_optimization_with_CF.pdf)).
* [Common-source stage with capacitive feedback](Amplifiers/Basic/CS%20CL%20Optimization/) ([pdf](Amplifiers/Basic/CS%20CL%20Optimization/CS_CL_optimization.pdf)).


### [Operational Transconductance Amplifiers (OTAs)](Amplifiers/OTAs/)

In this directory you will find the systematic design of various single-ended OTAs for a generic 180nm bulk CMOS process. The OTAs are designed using the EKV approach with the inversion coefficient. They are then simulated with ngspice using the EKV 2.6 compact model. The design and simulation are performed in a Quarto notebook. The latter includes the complete design flow and simuations. It is used to generate a design report in pdf format.

The directory currently includes:
* [The simple 5 transistors OTA](Amplifiers/OTAs/Simple%20OTA/) ([pdf](Amplifiers/OTAs/Simple%20OTA/Simple_OTA.pdf)).
* [The symmetrical OTA](Amplifiers/OTAs/Symmetrical%20OTA/) ([pdf](Amplifiers/OTAs/Symmetrical%20OTA/Symmetrical_OTA.pdf)).
* [The Miller OTA](Amplifiers/OTAs/Miller%20OTA/) ([pdf](Amplifiers/OTAs/Miller%20OTA/Miller_OTA.pdf)).
* [The telescopic OTA](Amplifiers/OTAs/Telescopic%20OTA/) ([pdf](Amplifiers/OTAs/Telescopic%20OTA/Telescopic_OTA.pdf)).
* [The folded-cascode OTA](Amplifiers/OTAs/Folded%20Cascode%20OTA/) ([pdf](Amplifiers/OTAs/Folded%20Cascode%20OTA/Folded_cascode_OTA.pdf)).

You can either just read the pdf file to understand how the OTA was designed. You can also download the folder and perform the design on your own computer either with the same specifications which does not need the simulations to be re-ran. You can also redesign the OTA for a different set of specification but for the same 180nm technology. In order to do this you need to enable the following variables  
```python
newDesign=True  
#newDesign=False  
newSim=True  
#newSim=False  
```
in the first cell of the notebook.

Of course to run the notebook you need to have Quarto, Python, Visual Studio code and ngspice installed on your computer with the same or similar [environment](Installation.md) I have on my Windows 11 computer.

## SC-Circuits

In this directory you will find various notebooks related to the design of switched-capacitor (SC) circuits including amplifiers and filters.

It currently includes:
* [Optimization of a fully-differential OTA with capacitive feedback for minimum current consumption](SC-Circuits/OTA%20with%20Capacitive%20Feedback/) ([pdf](SC-Circuits/OTA%20with%20Capacitive%20Feedback//OTA_with_capacitive_feedback.pdf)).
* [Analysis of the the large-signal step-response and settling time of an OTA with capacitive feedback](SC-Circuits/Large-signal%20Step%20Response/) ([pdf](SC-Circuits/Large-signal%20Step%20Response/Large_signal_step_response.pdf)).
* [AC simulation of switched-capacitor circuits using a standard Spice simulator such as LTSpice or ngspice.](SC-Circuits/Simulation%20of%20SC%20Circuits/) ([pdf](SC-Circuits/Simulation%20of%20SC%20Circuits/SCC_simulation.pdf))

