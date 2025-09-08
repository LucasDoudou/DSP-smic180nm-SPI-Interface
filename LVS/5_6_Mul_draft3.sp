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
.SUBCKT 5_6_Mul_draft3 X<0> X<1> X<2> X<3> X<4> X<5> Y<1> Y<0> VDD GND B<0> B<1> B<2> B<3> B<4> B<5> Z<0> A<0> A<1> A<2>
+ A<3> A<4>
** N=22 EP=22 IP=60 FDC=72
X0 X<0> Y<1> VDD GND B<0> And_Gate $T=-30440 45 0 0 $X=-29460 $Y=-5580
X1 X<1> Y<1> VDD GND B<1> And_Gate $T=-27260 45 0 0 $X=-26280 $Y=-5580
X2 X<2> Y<1> VDD GND B<2> And_Gate $T=-24080 45 0 0 $X=-23100 $Y=-5580
X3 X<3> Y<1> VDD GND B<3> And_Gate $T=-20900 45 0 0 $X=-19920 $Y=-5580
X4 X<4> Y<1> VDD GND B<4> And_Gate $T=-17720 45 0 0 $X=-16740 $Y=-5580
X5 X<5> Y<1> VDD GND B<5> And_Gate $T=-14540 45 0 0 $X=-13560 $Y=-5580
X6 X<0> Y<0> VDD GND Z<0> And_Gate $T=-11360 45 0 0 $X=-10380 $Y=-5580
X7 X<1> Y<0> VDD GND A<0> And_Gate $T=-8180 45 0 0 $X=-7200 $Y=-5580
X8 X<2> Y<0> VDD GND A<1> And_Gate $T=-5000 45 0 0 $X=-4020 $Y=-5580
X9 X<3> Y<0> VDD GND A<2> And_Gate $T=-1820 45 0 0 $X=-840 $Y=-5580
X10 X<4> Y<0> VDD GND A<3> And_Gate $T=1360 45 0 0 $X=2340 $Y=-5580
X11 X<5> Y<0> VDD GND A<4> And_Gate $T=4540 45 0 0 $X=5520 $Y=-5580
.ENDS
***************************************
