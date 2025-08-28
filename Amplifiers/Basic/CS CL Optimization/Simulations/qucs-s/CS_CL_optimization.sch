<Qucs Schematic 25.1.0>
<Properties>
  <View=-124,-60,805,974,1.49695,0,0>
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
  <Eqn Eqn1 1 60 610 -31 17 0 0 "Gain_dB=dB(out.v/in.v)" 1 "Phase=(cph(out.v)-cph(in.v))*180/pi" 1 "yes" 0>
  <R RF 1 300 110 -14 -43 0 0 "{RF}" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C_SPICE CS 1 200 220 -16 -46 0 0 "{CS}" 1 "" 0 "" 0 "" 0 "" 0 "2" 0 "C" 0>
  <Vac Vin 1 150 270 -51 -18 0 1 "1 V" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <Idc Ib 1 350 60 16 -17 0 3 "{Ib}" 1>
  <C CL 1 430 220 21 -16 0 1 "{CL}" 1 "" 0 "neutral" 0>
  <GND * 1 350 340 0 0 0 0>
  <Vdc VDD 1 490 150 18 -26 0 1 "{VDD}" 1>
  <C_SPICE CF 1 300 170 -18 -45 0 0 "{CF}" 1 "" 0 "" 0 "" 0 "" 0 "2" 0 "C" 0>
  <MOS_SPICE M1 1 350 220 6 -23 0 0 "N" 0 "4" 0 "nmos" 0 "ekvn_va W={W1} L={L1}" 0 "" 0 "" 0 "" 0 "" 0>
  <SpiceInclude SpiceInclude1 1 40 20 -31 18 0 0 "ekv018va.par" 1 "size_bias.par" 1 "" 0 "" 0 "" 0>
  <.AC AC1 1 30 470 0 33 0 0 "log" 1 "100 Hz" 1 "100 MHz" 1 "607" 0 "yes" 1>
</Components>
<Wires>
  <330 170 350 170 "" 0 0 0 "">
  <350 170 350 190 "" 0 0 0 "">
  <330 110 350 110 "" 0 0 0 "">
  <350 110 350 170 "" 0 0 0 "">
  <250 110 270 110 "" 0 0 0 "">
  <250 110 250 170 "" 0 0 0 "">
  <250 170 270 170 "" 0 0 0 "">
  <250 220 320 220 "g" 300 190 21 "">
  <250 170 250 220 "" 0 0 0 "">
  <230 220 250 220 "" 0 0 0 "">
  <150 220 170 220 "in" 130 190 9 "">
  <150 220 150 240 "" 0 0 0 "">
  <150 300 150 320 "" 0 0 0 "">
  <150 320 350 320 "" 0 0 0 "">
  <350 250 350 320 "" 0 0 0 "">
  <350 10 350 30 "" 0 0 0 "">
  <350 90 350 110 "" 0 0 0 "">
  <350 320 370 320 "" 0 0 0 "">
  <370 320 430 320 "" 0 0 0 "">
  <370 220 370 320 "" 0 0 0 "">
  <350 170 430 170 "out" 410 140 43 "">
  <430 170 430 190 "" 0 0 0 "">
  <430 250 430 320 "" 0 0 0 "">
  <350 320 350 340 "" 0 0 0 "">
  <430 320 490 320 "" 0 0 0 "">
  <490 180 490 320 "" 0 0 0 "">
  <350 10 490 10 "vdd" 430 -20 69 "">
  <490 10 490 120 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 306 673 333 223 3 #c0c0c0 1 11 1 100 1 1e+08 0 0.0562341 1 17.7828 0 -360 45 -180 315 0 225 1 1 0 "Frequency [Hz]" "Gain [dB]" "Phase [degre]">
	<"ngspice/ac.v(out)@frequency" #ff0000 2 3 0 0 0>
	  <Mkr 100 20 -140 3 0 0>
	  <Mkr 1.02306e+06 248 -191 3 0 0>
	<"ngspice/ac.phase@frequency" #0000ff 2 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
