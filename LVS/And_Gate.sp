* SPICE NETLIST
***************************************

.SUBCKT And_Gate VIN_B VIN_A VDD GND VOUT
** N=7 EP=5 IP=0 FDC=6
M0 3 VIN_A 5 GND NM L=1.8e-07 W=2.2e-07 $X=1890 $Y=-4485 $D=0
M1 GND VIN_B 3 GND NM L=1.8e-07 W=2.2e-07 $X=2690 $Y=-4485 $D=0
M2 VOUT 5 GND GND NM L=1.8e-07 W=2.2e-07 $X=3490 $Y=-4485 $D=0
M3 5 VIN_A VDD VDD PM L=1.8e-07 W=4.4e-07 $X=1890 $Y=-2095 $D=4
M4 VDD VIN_B 5 VDD PM L=1.8e-07 W=4.4e-07 $X=2610 $Y=-2095 $D=4
M5 VOUT 5 VDD VDD PM L=1.8e-07 W=4.4e-07 $X=3330 $Y=-2095 $D=4
.ENDS
***************************************
