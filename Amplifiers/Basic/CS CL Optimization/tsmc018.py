import numpy as np
from numpy import sqrt as sqrt

# Parameters for the TSMC 0.18um process

# Physical constants
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
# NMOS parameters #
###################
# EKV intrinsic parameters
VT0n=0.455
GAMMAn=0.540
PSI0n=0.99
betan=420E-6
n0n=1+GAMMAn/(2*sqrt(PSI0n))
Ispecsqn=2*n0n*betan*UT**2
lambdan=24E6
#lambdan=12E6
# Flicker noise parameters
AFn=1
KFn=8.1E-24
rhon=KFn/(4*kT*Cox)
# Overlap capacitance
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
# PMOS parameters #
###################
# EKV intrinsic parameters
VT0p=0.457
GAMMAp=0.609
PSI0p=0.99
betap=99E-6
n0p=1+GAMMAp/(2*sqrt(PSI0p))
Ispecsqp=2*n0p*betap*UT**2
lambdap=20E6
#lambdap=10E6
# Flicker noise paramters
AFp=1
KFp=6.75E-23
rhop=KFp/(4*kT*Cox)
# Overlap capacitance
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
