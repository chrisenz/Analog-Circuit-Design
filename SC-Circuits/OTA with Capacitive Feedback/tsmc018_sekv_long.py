import numpy as np
from numpy import sqrt as sqrt

###############################################
# sEKV parameters for the TSMC 0.18um process #
#            Long-channel vlues               #
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

###################
# nMOS parameters #
###################
# sEKV parameters
n0n=1.3
Ispecsqn=500E-9
VT0n=0.445
Lsatn=0
# Output conductance parameter
lambdan_long=18E6 # Long-channel value
lambdan_short=9.6E6 # Short-channel value
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

###################
# pMOS parameters #
###################
# sEKV parameters
n0p=1.32
Ispecsqp=115E-9
VT0p=0.445
Lsatp=0
# Output conductance parameter
lambdap=20E6
#lambdap=10E6
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
