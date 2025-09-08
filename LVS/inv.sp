* SPICE NETLIST
***************************************

.SUBCKT inv VI GND VDD VO
** N=4 EP=4 IP=0 FDC=2
M0 VO VI GND GND NM L=1.8e-07 W=2.2e-07 $X=-3205 $Y=4225 $D=0
M1 VO VI VDD VDD PM L=1.8e-07 W=4.4e-07 $X=-3205 $Y=5665 $D=4
.ENDS
***************************************
