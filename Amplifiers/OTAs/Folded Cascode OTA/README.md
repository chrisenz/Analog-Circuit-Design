# Design of the Folded-cascode OTA

![Simple OTA.](/Amplifiers/OTAs/Folded%20Cascode%20OTA/Figures/Folded_cascode_ota_schematic.png)

This directory contains all files required to design the folded-cascode OTA shown above using the EKV design methodology with the inversion coefficient for a generic 180nm bulk CMOS process. The circuit is simulated with ngspice using the EKV 2.6 compact model using the paramters corresponding to this generic 180 nm CMOS process.
The design and simulations are perfomed from Quatro.

If your are just interested in learning about this OTA and the EKV methodology that is used for the design of this OTA, you can simply read the [report](/Amplifiers/OTAs/Folded%20Cascode%20OTA/Folded_cascode_OTA.pdf) generated from the Quarto document.

You can either just read the pdf file to understand how the OTA was designed. You can also download the folder and perform the design on your own computer either with the same specifications which does not need the simulations to be re-ran. You can also redesign the OTA for a different set of specification but for the same 180nm technology. In order to do this you need to enable the following variables  
```python
newDesign=True  
#newDesign=False  
newSim=True  
#newSim=False  
```
in the first cell of the notebook.

You also need to have ngspice installed (see the [ngspice installation instructions](/ngspice_installation.md)).

