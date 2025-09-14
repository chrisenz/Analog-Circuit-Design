<Qucs Schematic 25.1.0>
<Properties>
  <View=-90,-50,771,770,1.61498,0,0>
  <Grid=10,10,1>
  <DataSet=CS_CL_optimization.dat>
  <DataDisplay=CS_CL_optimization.dpl>
  <OpenDisplay=0>
  <Script=CS_CL_optimization.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <SpiceInclude SpiceInclude1 1 40 20 -31 18 0 0 "ekv018va.par" 1 "size_bias.par" 1 "" 0 "" 0 "" 0>
  <R RF 1 220 120 -14 -43 0 0 "{RF}" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C_SPICE CS 1 120 230 -16 -46 0 0 "{CS}" 1 "" 0 "" 0 "" 0 "" 0 "2" 0 "C" 0>
  <Vac Vin 1 70 280 -51 -18 0 1 "1 V" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <Idc Ib 1 270 70 16 -17 0 3 "{Ib}" 1>
  <C CL 1 350 230 21 -16 0 1 "{CL}" 1 "" 0 "neutral" 0>
  <GND * 1 270 350 0 0 0 0>
  <Vdc VDD 1 410 160 18 -26 0 1 "{VDD}" 1>
  <C_SPICE CF 1 220 180 -18 -45 0 0 "{CF}" 1 "" 0 "" 0 "" 0 "" 0 "2" 0 "C" 0>
  <MOS_SPICE M1 1 270 230 6 -23 0 0 "N" 0 "4" 0 "nmos" 0 "ekvn_va W={W1} L={L1}" 0 "" 0 "" 0 "" 0 "" 0>
  <.AC AC1 1 30 420 0 33 0 0 "log" 1 "1 kHz" 1 "100 MHz" 1 "607" 0 "yes" 1>
  <Eqn Eqn1 1 60 560 -31 17 0 0 "Gain_dB=dB(out.v/in.v)" 1 "Phase=(cph(out.v)-cph(in.v))*180/pi" 1 "yes" 0>
</Components>
<Wires>
  <250 180 270 180 "" 0 0 0 "">
  <270 180 270 200 "" 0 0 0 "">
  <250 120 270 120 "" 0 0 0 "">
  <270 120 270 180 "" 0 0 0 "">
  <170 120 190 120 "" 0 0 0 "">
  <170 120 170 180 "" 0 0 0 "">
  <170 180 190 180 "" 0 0 0 "">
  <170 230 240 230 "g" 220 200 11 "">
  <170 180 170 230 "" 0 0 0 "">
  <150 230 170 230 "" 0 0 0 "">
  <70 230 90 230 "in" 50 200 0 "">
  <70 230 70 250 "" 0 0 0 "">
  <70 310 70 330 "" 0 0 0 "">
  <70 330 270 330 "" 0 0 0 "">
  <270 260 270 330 "" 0 0 0 "">
  <270 20 270 40 "" 0 0 0 "">
  <270 100 270 120 "" 0 0 0 "">
  <270 330 290 330 "" 0 0 0 "">
  <290 330 350 330 "" 0 0 0 "">
  <290 230 290 330 "" 0 0 0 "">
  <270 180 350 180 "out" 330 150 33 "">
  <350 180 350 200 "" 0 0 0 "">
  <350 260 350 330 "" 0 0 0 "">
  <270 330 270 350 "" 0 0 0 "">
  <350 330 410 330 "" 0 0 0 "">
  <410 190 410 330 "" 0 0 0 "">
  <270 20 410 20 "vdd" 350 -10 59 "">
  <410 20 410 130 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 276 633 333 223 3 #c0c0c0 1 11 1 1000 1 1e+08 0 0.0316228 1 31.6228 1 -370.183 50 -150 315 0 225 1 1 0 "Frequency [Hz]" "Gain [dB]" "Phase [degre]">
	<"ngspice/ac.v(out)@frequency" #ff0000 2 3 0 0 0>
	  <Mkr 1.01905e+06 178 -210 3 0 0>
	  <Mkr 1000 61 -267 3 0 0>
	<"ngspice/ac.phase@frequency" #0000ff 2 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
