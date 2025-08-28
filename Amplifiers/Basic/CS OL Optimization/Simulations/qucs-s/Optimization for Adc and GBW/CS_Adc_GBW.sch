<Qucs Schematic 25.1.0>
<Properties>
  <View=-216,-36,951,696,1.59836,0,0>
  <Grid=10,10,1>
  <DataSet=CS_Adc_GBW.dat>
  <DataDisplay=CS_Adc_GBW.dpl>
  <OpenDisplay=0>
  <Script=CS_GBW.m>
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
  <C CL 1 580 290 21 -16 0 1 "{CL}" 1 "" 0 "neutral" 0>
  <MOS_SPICE M1 1 500 290 6 -23 0 0 "N" 0 "4" 0 "nmos" 0 "ekvn_va W={W1} L={L1}" 0 "" 0 "" 0 "" 0 "" 0>
  <Vac Vin 1 400 290 -18 -50 0 0 "1 V" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <VCVS SRC1 1 300 320 -26 34 0 0 "1" 1 "0" 0>
  <MOS_SPICE M2 1 200 290 -22 -23 1 2 "N" 0 "4" 0 "nmos" 0 "ekvn_va W={W1} L={L1}" 0 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 500 350 0 0 0 0>
  <GND * 1 200 350 0 0 0 0>
  <Idc Ib1 1 500 190 16 -17 0 3 "{Ib}" 1>
  <Idc Ib2 1 200 190 16 -17 0 3 "{Ib}" 1>
  <Vdc VDD 1 640 240 18 -26 0 1 "{VDD}" 1>
  <.AC AC1 1 120 450 0 34 0 0 "log" 1 "1 kHz" 1 "10 GHz" 1 "607" 0 "yes" 1>
  <Eqn Eqn1 1 150 590 -31 17 0 0 "Gain_dB=dB(out.v/in.v)" 1 "Phase=(cph(out.v)-cph(in.v))*180/pi" 1 "yes" 0>
  <SpiceInclude SpiceInclude1 1 40 20 -31 18 0 0 "ekv018va.par" 1 "size_bias.par" 1 "" 0 "" 0 "" 0>
</Components>
<Wires>
  <500 240 500 260 "" 0 0 0 "">
  <500 240 580 240 "out" 560 210 43 "">
  <580 240 580 260 "" 0 0 0 "">
  <500 220 500 240 "" 0 0 0 "">
  <500 140 500 160 "" 0 0 0 "">
  <580 320 580 350 "" 0 0 0 "">
  <520 290 520 350 "" 0 0 0 "">
  <500 320 500 350 "" 0 0 0 "">
  <500 350 520 350 "" 0 0 0 "">
  <520 350 580 350 "" 0 0 0 "">
  <430 290 470 290 "in" 470 260 19 "">
  <330 290 370 290 "n2" 320 260 20 "">
  <330 350 500 350 "" 0 0 0 "">
  <200 350 270 350 "" 0 0 0 "">
  <200 320 200 350 "" 0 0 0 "">
  <180 290 180 350 "" 0 0 0 "">
  <180 350 200 350 "" 0 0 0 "">
  <230 290 250 290 "" 0 0 0 "">
  <250 290 270 290 "" 0 0 0 "">
  <250 240 250 290 "" 0 0 0 "">
  <200 240 250 240 "n1" 240 210 28 "">
  <200 240 200 260 "" 0 0 0 "">
  <200 140 500 140 "" 0 0 0 "">
  <200 140 200 160 "" 0 0 0 "">
  <200 220 200 240 "" 0 0 0 "">
  <580 350 640 350 "" 0 0 0 "">
  <640 270 640 350 "" 0 0 0 "">
  <500 140 640 140 "vdd" 610 110 80 "">
  <640 140 640 210 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 396 653 333 223 3 #c0c0c0 1 11 1 100 1 1e+08 0 0.01 1 1000 1 -360 45 0 315 0 225 1 1 0 "Frequency [Hz]" "Gain [dB]" "Phase [degre]">
	<"ngspice/ac.v(out)@frequency" #ff0000 2 3 0 0 0>
	  <Mkr 1e+08 178 -210 3 0 0>
	  <Mkr 1026.82 61 -267 3 0 0>
	<"ngspice/ac.phase@frequency" #0000ff 2 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
