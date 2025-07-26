# Analog-Circuit-Design

This repository presents various examples of analog CMOS circuit design. It is focused on the use of the EKV MOSFET model and the related inversion coefficient approach. It is structured in the following Chapters.

## Amplifiers

### Basic

#### Common-source stage with capacitive feedback


### OTAs

In this directory you will find the systematic design of various single-ended OTAs for a generic 180nm bulk CMOS process. The OTAs are designed using the EKV approach with the inversion coefficient. They are then simulated with ngspice using the EKV 2.6 compact model. The designs currently include:
* [The simple 5 transistors OTA](Amplifiers/OTAs/Simple%20OTA/)
* The symmetrical OTA
* The Miller OTA
* The telescopic OTA
* The folded-cascode OTA

## SC-Circuits

* [AC simulation of switched-capacitor circuits using a standard Spice simulator such as LTSpice or ngspice.](/Simulation%20of%20SC%20Circuits/) ([pdf](/Simulation%20of%20SC%20Circuits/SCC_simulation.pdf))

To run the ngspice simulations you need to ![install ngspice](/ngspice_installation.md).
