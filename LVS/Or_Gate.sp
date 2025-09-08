* SPICE NETLIST
***************************************

.SUBCKT Or_Gate Vin_A Vin_B VDD GND VOUT
** N=7 EP=5 IP=0 FDC=6
M0 5 Vin_B GND GND NM L=1.8e-07 W=2.2e-07 $X=3965 $Y=-3820 $D=0
M1 GND Vin_A 5 GND NM L=1.8e-07 W=2.2e-07 $X=4765 $Y=-3820 $D=0
M2 VOUT 5 GND GND NM L=1.8e-07 W=2.2e-07 $X=5565 $Y=-3820 $D=0
M3 3 Vin_B 5 VDD PM L=1.8e-07 W=4.4e-07 $X=3965 $Y=-2015 $D=4
M4 VDD Vin_A 3 VDD PM L=1.8e-07 W=4.4e-07 $X=4685 $Y=-2015 $D=4
M5 VOUT 5 VDD VDD PM L=1.8e-07 W=4.4e-07 $X=5405 $Y=-2015 $D=4
.ENDS
***************************************
