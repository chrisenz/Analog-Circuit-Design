# Design of the Miller OTA

![Miller OTA.](/Amplifiers/OTAs/Miller%20OTA/Figures/Miller_OTA_schematic.png)

This directory contains all files required to design the Miller OTA shown above using the EKV design methodology with the inversion coefficient for a generic 180nm bulk CMOS process. The circuit is simulated with ngspice using the EKV 2.6 compact model using the paramters corresponding to this generic 180 nm CMOS process.
The design and simulations are perfomed from Quatro.

If your are just interested in learning about this OTA and the EKV methodology that is used for the design of this OTA, you can simply read the [report](/Amplifiers/OTAs/Miller%20OTA/Miller_OTA.pdf) generated from the Quarto document.

You can  also download the folder and run the Quarto document on your own computer. This obviously requires the installation of Quarto. If you want to design the OTA for different specifications but for the same process, you need to change the variable in the initialization cell of the quarto document according to  
newDesign=True  
#newDesign=False  
newSim=True  
#newSim=False  

You also need to have ngspice installed (see the [ngspice installation instructions](/ngspice_installation.md)).

