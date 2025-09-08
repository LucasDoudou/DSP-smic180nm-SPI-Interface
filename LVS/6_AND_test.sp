* SPICE NETLIST
***************************************

.SUBCKT And_Gate VIN_B VIN_A VDD GND VOUT
** N=7 EP=5 IP=0 FDC=6
M0 6 VIN_A 7 GND NM L=1.8e-07 W=2.2e-07 $X=1890 $Y=-4485 $D=0
M1 GND VIN_B 6 GND NM L=1.8e-07 W=2.2e-07 $X=2690 $Y=-4485 $D=0
M2 VOUT 7 GND GND NM L=1.8e-07 W=2.2e-07 $X=3490 $Y=-4485 $D=0
M3 7 VIN_A VDD VDD PM L=1.8e-07 W=4.4e-07 $X=1890 $Y=-2095 $D=4
M4 VDD VIN_B 7 VDD PM L=1.8e-07 W=4.4e-07 $X=2610 $Y=-2095 $D=4
M5 VOUT 7 VDD VDD PM L=1.8e-07 W=4.4e-07 $X=3330 $Y=-2095 $D=4
.ENDS
***************************************
.SUBCKT 6_AND_test Y<0> VDD GND X<0> Z<0> X<1> A<0> X<2> A<1> X<3> A<2> X<4> A<3> X<5> A<4>
** N=15 EP=15 IP=30 FDC=36
X0 X<0> Y<0> VDD GND Z<0> And_Gate $T=2375 -2105 0 0 $X=3355 $Y=-7730
X1 X<1> Y<0> VDD GND A<0> And_Gate $T=5555 -2105 0 0 $X=6535 $Y=-7730
X2 X<2> Y<0> VDD GND A<1> And_Gate $T=8735 -2105 0 0 $X=9715 $Y=-7730
X3 X<3> Y<0> VDD GND A<2> And_Gate $T=11915 -2105 0 0 $X=12895 $Y=-7730
X4 X<4> Y<0> VDD GND A<3> And_Gate $T=15095 -2105 0 0 $X=16075 $Y=-7730
X5 X<5> Y<0> VDD GND A<4> And_Gate $T=18275 -2105 0 0 $X=19255 $Y=-7730
.ENDS
***************************************
