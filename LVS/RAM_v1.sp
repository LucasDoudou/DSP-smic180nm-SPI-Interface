* SPICE NETLIST
***************************************

.SUBCKT n18_2 1 2 3 4
** N=4 EP=4 IP=0 FDC=1
M0 3 4 2 1 NM L=1.8e-07 W=2.2e-07 $X=0 $Y=0 $D=0
.ENDS
***************************************
.SUBCKT inv VI GND VDD VO
** N=4 EP=4 IP=0 FDC=2
M0 VO VI GND GND NM L=1.8e-07 W=2.2e-07 $X=-3205 $Y=4225 $D=0
M1 VO VI VDD VDD PM L=1.8e-07 W=4.4e-07 $X=-3205 $Y=5665 $D=4
.ENDS
***************************************
.SUBCKT RAM_v1 WL Q BL GND VDD
** N=7 EP=5 IP=20 FDC=8
X0 GND 5 1 WL n18_2 $T=2520 -3795 0 0 $X=1820 $Y=-4935
X1 GND Q BL WL n18_2 $T=7180 -3795 0 0 $X=6480 $Y=-4935
X2 1 GND VDD Q inv $T=7305 -8020 0 0 $X=3190 $Y=-4935
X3 Q GND VDD 1 inv $T=8805 -8020 0 0 $X=4690 $Y=-4935
X4 BL GND VDD 5 inv $T=11965 -8020 0 0 $X=7850 $Y=-4935
.ENDS
***************************************
