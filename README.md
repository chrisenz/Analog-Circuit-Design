# Analog-Circuit-Design

This repository presents various examples of analog CMOS circuit design. It is focused on the use of the EKV MOSFET model and the related inversion coefficient approach. It is structured in the following Chapters.

## Amplifiers

### Basic

#### Common-source stage with capacitive feedback


### OTAs

In this directory you will find the systematic design of various single-ended OTAs for a generic 180nm bulk CMOS process. The OTAs are designed using the EKV approach with the inversion coefficient. They are then simulated with ngspice using the EKV 2.6 compact model. The design and simulation are performed ina Quarto notebook. The latter includes the complete design flow and simuations. It is used to generate a design report in pdf format.

The directory currently includes:
* [The simple 5 transistors OTA](Amplifiers/OTAs/Simple%20OTA/) ([pdf](Amplifiers/OTAs/Simple%20OTA/Simple_OTA.pdf)).
* [The symmetrical OTA](Amplifiers/OTAs/Symmetrical%20OTA/) ([pdf](Amplifiers/OTAs/Symmetrical%20OTA/Symmetrical_OTA.pdf)).
* [The Miller OTA](Amplifiers/OTAs/Miller%20OTA/) ([pdf](Amplifiers/OTAs/Miller%20OTA/Miller_OTA.pdf)).
* [The telescopic OTA](Amplifiers/OTAs/Telescopic%20OTA/) ([pdf](Amplifiers/OTAs/Telescopic%20OTA/Telescopic_OTA.pdf)).
* [The folded-cascode OTA](Amplifiers/OTAs/Folded%20Cascode%20OTA/) ([pdf](Amplifiers/OTAs/Folded%20Cascode%20OTA/Folded_cascode_OTA.pdf)).

You can either just read the pdf file to understand how the OTA was designed. You can also download the folder and perform the design on you own computer either withe same specifications which does not need the simulations to be re-ran. You can also redesign the OTA for a different set of specification but for the same 180nm technology. In order to do this you neeed to enable the follwoingin variables
  newDesign=True
  #newDesign=False
  newSim=True
  #newSim=False
in the first cell of the notebook.

## SC-Circuits

* [AC simulation of switched-capacitor circuits using a standard Spice simulator such as LTSpice or ngspice.](/Simulation%20of%20SC%20Circuits/) ([pdf](/Simulation%20of%20SC%20Circuits/SCC_simulation.pdf))

To run the ngspice simulations you need to ![install ngspice](/ngspice_installation.md).
