import numpy as np
from numpy import sqrt as sqrt

###############################################
# sEKV parameters for the TSMC 0.18um process #
#            Long-channel values              #
###############################################

######################
# Physical constants #
######################
kB=1.38E-23
q=1.6E-19
T=300
kT=kB*T
UT=kT/q
epsilon0=8.854E-12
epsilonox=3.9

######################
# Process parameters #
######################
#Cox=8.46e-3
tox=4.09E-9
Cox=epsilonox*epsilon0/tox
Hdif=0.2E-6
VDD=1.8
Lmin=180e-9
Wmin=200e-9

###################
# nMOS parameters #
###################
# EKV 2.6 paramaters
GAMMAn=0.540
PSI0n=0.99
betan=420e-6
# sEKV parameters
n0n=1+GAMMAn/(2*sqrt(PSI0n))
Ispecsqn=2*n0n*betan*UT**2
VT0n=0.455
Lsatn=26e-9
# Output conductance parameter
#lambdan=24E6
#lambdan=12E6
lambdan=20E6
# Flicker noise parameters
AFn=1
KFn=8.1E-24
rhon=KFn/(4*kT*Cox)
# Overlap capacitances
CGDOn=3.665E-10
CGSOn=3.665E-10
CGBOn=0
# Junction capacitances
CJn=1E-3
CJSWn=2E-10
# Matching parameters
AVTn=5.0E-9
Abetan=0.01E-6
# Sours/Drain sheet resistance
RSHn=600
# Channel width and length corrections
DWn=3.9e-8
DLn=-7.6e-8

###################
# pMOS parameters #
###################
# EKV 2.6 paramaters
GAMMAp=0.609
PSI0p=0.99
betap=99E-6
# sEKV parameters
n0p=1+GAMMAp/(2*sqrt(PSI0p))
Ispecsqp=2*n0p*betap*UT**2
VT0p=0.445
Lsatp=36e-9
# Output conductance parameter
#lambdap=20E6
#lambdap=12E6
lambdap=20E6
# Flicker noise parameters
AFp=1
KFp=6.75E-23
rhop=KFp/(4*kT*Cox)
# Overlap capacitances
CGDOp=3.285E-10
CGSOp=3.285E-10
CGBOp=0
# Junction capacitances
CJp=1.121E-3
CJSWp=2.481E-10
# Matching parameters
AVTp=5.0E-9
Abetap=0.01E-6
# Sours/Drain sheet resistance
RSHp=2385.6
# Channel width and length corrections
DWp=5.4e-8
DLp=-7.2e-8