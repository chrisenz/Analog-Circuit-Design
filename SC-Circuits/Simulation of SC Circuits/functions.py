import numpy as np
from numpy import pi as pi
from numpy import log as ln
from numpy import log10 as log
from numpy import sqrt as sqrt
from numpy import exp as exp
from numpy import sin as sin
from numpy import cos as cos
from numpy import arccos as acos
from numpy import arcsin as asin
from numpy import arctan as atan
from numpy import sinh as sinh
from numpy import cosh as cosh
from numpy import arcsinh as asinh
from numpy import arccosh as acosh

def Tbut(Omega,eps,N):
    return 1/sqrt(1+(eps*pow(Omega,N))**2)

def CN(Omega,N):
    if abs(Omega) <= 1:
        CN=cos(N*acos(Omega))
    elif Omega<-1:
        CN=pow(-1,N)*cosh(N*acosh(-Omega))
    else:
        CN=cosh(N*acosh(Omega))
    return CN

def Tche(Omega,eps,N):
    return 1/sqrt(1+(eps*CN(Omega,N))**2)

def Nestimate(Omegas,Ap,As):
    epsilon=sqrt(pow(10,Ap/10)-1)
    return (As+20*log(1/epsilon)+6)/(8.68*acosh(Omegas))

def drawButpoles(axe,N,epsilon):
    axe.spines["right"].set_position(("data", 0))
    axe.spines["bottom"].set_position(("data", 0))
    axe.spines["top"].set_visible(False)
    axe.spines["left"].set_visible(False)
    axe.plot(1, 0, ">k", transform=axe.get_yaxis_transform(), clip_on=False)
    axe.plot(0, 1, "^k", transform=axe.get_xaxis_transform(), clip_on=False)
    axe.set_aspect(1)
    axe.set_xlabel('$\sigma$', ha='left', va='center')
    axe.xaxis.set_label_coords(1.05, 0.48)
    axe.set_ylabel('$j\Omega$', rotation='horizontal', ha='center', va='bottom')
    axe.yaxis.set_label_coords(0.72, 1.0)
    axe.yaxis.tick_right()
    axe.grid(False)
    poles=np.zeros(N,dtype=complex)
    theta = np.linspace(pi/2, 3*pi/2, 100)
    Omega0 = pow(epsilon,-1/N)
    x = Omega0*cos(theta)
    y = Omega0*sin(theta)
    axe.plot(x, y, 'k--')
    textstr = '\n'.join((
    r'$N =%.2f$' + str(N),
    r'$\varepsilon=%.2f$' + f'{epsilon:.1f}',
    r'$\Omega_0=%.2f$' + f'{Omega0:.1f}'))
    axe.annotate('',
             xy=(0,0), xycoords='data',
             xytext=(Omega0*cos(3*pi/4), Omega0*sin(3*pi/4)), textcoords='data',
             arrowprops=dict(arrowstyle='<|-, head_length=0.8, head_width=0.5', facecolor='black'),
             ha='right', va='bottom'
            )
    axe.annotate('$\Omega_0$',
             xy=(0,0), xycoords='data',
             xytext=(0.6*Omega0*cos(3*pi/4)+0.1, 0.6*Omega0*sin(3*pi/4)), textcoords='data',
             ha='left', va='center', size=15
            )
#    axe.annotate(textstr,
#             xy=(0,0), xycoords='data',
#             xytext=(0.6*Omega0*cos(3*pi/4), 0.6*Omega0*sin(5*pi/4)), textcoords='data',
#             ha='center', va='center', size=15
#            )
    axe.annotate(textstr,
             xy=(0,0), xycoords='data',
             xytext=(0.3*Omega0, 0.5*Omega0), textcoords='data',
             ha='left', va='center', size=15
            )
    for k in range(0,N):
        poles[k]=Omega0*cos((2*k+N+1)/(2*N)*pi) + 1j*Omega0*sin((2*k+N+1)/(2*N)*pi)
        axe.plot(poles.real[k], poles.imag[k], 'r', markersize=6, marker='o')
    axe.set_xlim(-1.1*Omega0,0.4*Omega0)
    axe.set_xticks([-1,-0.5,0])
    axe.set_ylim(-1.1*Omega0,1.1*Omega0)
    axe.set_yticks([-1,-0.5,0.5,1])

def drawChepoles(axe,N,epsilon):
    a = asinh(1/epsilon)/N
    b = sinh(a)
    c = cosh(a)
    axe.spines["right"].set_position(("data", 0))
    axe.spines["bottom"].set_position(("data", 0))
    axe.spines["top"].set_visible(False)
    axe.spines["left"].set_visible(False)
    axe.plot(1, 0, ">k", transform=axe.get_yaxis_transform(), clip_on=False)
    axe.plot(0, 1, "^k", transform=axe.get_xaxis_transform(), clip_on=False)
    axe.set_aspect(1/2)
    axe.set_xlabel('$\sigma$', ha='left', va='center', size=15)
    axe.xaxis.set_label_coords(1.05, 0.49)
    axe.set_ylabel('$j\Omega$', rotation='horizontal', ha='center', va='bottom', size=15)
    axe.yaxis.set_label_coords(0.5, 1.02)
    axe.yaxis.tick_right()
    axe.grid(False)
    poles=np.zeros(N,dtype=complex)
    theta = np.linspace(pi/2, 3*pi/2, 100)
    x = b*cos(theta)
    y = c*sin(theta)
    axe.plot(x, y, 'k--')
    textstr = '\n'.join((
        r'$N =%.2f$' + str(N),
        r'$\varepsilon=%.2f$' + f'{epsilon:.1f}'))
    axe.annotate(textstr,
             xy=(0,0), xycoords='data',
             xytext=(0.2, 0.5), textcoords='data',
             ha='left', va='center', size=15
            )
    for k in range(0,N):
        poles[k] = -b*sin((2*k+1)/N*pi/2) + 1j*c*cos((2*k+1)/N*pi/2)
        axe.plot(poles.real[k], poles.imag[k], 'r', markersize=6, marker='o')
        axe.set_xlim(-0.5,0.5)
        axe.set_xticks([-0.4,-0.2,0.0,0.2,0.4])
        axe.set_ylim(-1.2,1.2)
        axe.set_yticks([-1,-0.8,-0.6,-0.4,-0.2,0.2,0.4,0.6,0.8,1])