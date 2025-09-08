* SPICE NETLIST
***************************************

.SUBCKT And_Gate_v2 VIN_B VIN_A VDD GND VOUT
** N=7 EP=5 IP=0 FDC=6
M0 3 VIN_A 5 GND NM L=1.8e-07 W=2.2e-07 $X=3225 $Y=-4370 $D=0
M1 GND VIN_B 3 GND NM L=1.8e-07 W=2.2e-07 $X=4025 $Y=-4370 $D=0
M2 VOUT 5 GND GND NM L=1.8e-07 W=2.2e-07 $X=4825 $Y=-4370 $D=0
M3 5 VIN_A VDD VDD PM L=1.8e-07 W=4.4e-07 $X=3225 $Y=-1980 $D=4
M4 VDD VIN_B 5 VDD PM L=1.8e-07 W=4.4e-07 $X=3945 $Y=-1980 $D=4
M5 VOUT 5 VDD VDD PM L=1.8e-07 W=4.4e-07 $X=4665 $Y=-1980 $D=4
.ENDS
***************************************
