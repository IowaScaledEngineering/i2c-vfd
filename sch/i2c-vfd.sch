v 20130925 2
T 41500 54300 9 10 1 0 0 6 1
VIN
T 41500 53900 9 10 1 0 0 6 1
GND
N 56400 46800 56400 47200 4
C 56300 46500 1 0 0 gnd-1.sym
N 52600 52800 52100 52800 4
C 52200 51000 1 0 0 gnd-1.sym
N 52300 51300 52300 52400 4
N 52300 52400 52100 52400 4
N 50500 51600 50500 52800 4
N 50200 53200 50700 53200 4
N 50700 52400 49900 52400 4
N 49900 47000 60900 47000 4
T 50900 53700 9 10 1 0 0 0 1
ICSP Header
C 61000 49100 1 90 0 resistor-1.sym
{
T 60600 49400 5 10 0 0 90 0 1
device=RESISTOR
T 60700 49300 5 10 1 1 90 0 1
refdes=R2
T 61200 49300 5 10 1 1 90 0 1
value=10k
T 61000 49100 5 10 0 0 90 0 1
footprint=0805
}
C 60700 46700 1 270 0 capacitor-1.sym
{
T 61400 46500 5 10 0 1 270 0 1
device=CAPACITOR
T 61000 46400 5 10 1 1 0 0 1
refdes=C5
T 61600 46500 5 10 0 0 270 0 1
symversion=0.1
T 61000 45900 5 10 1 1 0 0 1
value=1uF
T 60700 46700 5 10 0 0 0 0 1
footprint=0805
T 61000 45700 5 10 1 1 0 0 1
description=16V
}
C 60800 45200 1 0 0 gnd-1.sym
N 60900 46700 60900 49100 4
N 60900 50000 60900 55500 4
C 42400 53800 1 0 1 termblk2-1.sym
{
T 41400 54450 5 10 0 0 0 6 1
device=TERMBLK2
T 42000 54700 5 10 1 1 0 6 1
refdes=J1
T 42400 53800 5 10 0 1 0 0 1
footprint=TERMBLK2_200MIL
}
N 56800 53900 56800 55500 4
N 56400 53900 56400 55500 4
C 59100 51700 1 0 0 gnd-1.sym
N 59200 52000 59200 52200 4
N 59200 52200 59000 52200 4
N 52300 55500 60900 55500 4
N 59000 52500 59300 52500 4
N 59300 52500 59300 55500 4
N 59000 52800 59300 52800 4
N 59000 48000 60900 48000 4
C 53100 46200 1 0 0 crystal-1.sym
{
T 53300 46700 5 10 0 0 0 0 1
device=CRYSTAL
T 53300 46500 5 10 1 1 0 0 1
refdes=Y1
T 53300 46900 5 10 0 0 0 0 1
symversion=0.1
T 53950 46100 5 10 1 1 0 0 1
value=20MHz
T 53100 46200 5 10 0 1 0 0 1
footprint=crystal-hc49
}
N 53100 45800 53100 51300 4
N 53800 45800 53800 51000 4
C 53000 44600 1 0 0 gnd-1.sym
C 53600 45800 1 270 0 capacitor-1.sym
{
T 54300 45600 5 10 0 1 270 0 1
device=CAPACITOR
T 53900 45500 5 10 1 1 0 0 1
refdes=C4
T 54500 45600 5 10 0 0 270 0 1
symversion=0.1
T 53900 45000 5 10 1 1 0 0 1
value=22pF
T 53600 45800 5 10 0 0 0 0 1
footprint=0805
T 53900 44800 5 10 1 1 0 0 1
description=16V, NP0
}
C 53700 44600 1 0 0 gnd-1.sym
N 53800 51000 54200 51000 4
N 54200 51300 53100 51300 4
N 56800 46800 56800 47200 4
C 56700 46500 1 0 0 gnd-1.sym
N 52600 52200 52600 52800 4
N 49900 52400 49900 47000 4
N 50500 51600 54200 51600 4
N 50200 51900 54200 51900 4
N 50200 51900 50200 53200 4
N 52600 52200 54200 52200 4
C 42500 53400 1 0 0 gnd-1.sym
N 42600 53700 42600 54000 4
N 42600 54000 42400 54000 4
N 60900 45500 60900 45800 4
N 44800 52500 49000 52500 4
N 44800 53900 44800 54400 4
N 42400 54400 43500 54400 4
{
T 42600 54400 5 10 1 1 0 0 1
netname=VIN
}
C 50700 52200 1 0 0 avrprog-1.sym
{
T 50700 53800 5 10 0 1 0 0 1
device=AVRPROG
T 51300 53500 5 10 1 1 0 0 1
refdes=J3
T 50900 52000 5 10 0 1 0 0 1
footprint=JUMPER3x2
}
T 41000 41500 9 10 1 0 0 2 3
Notes:
1) All capacitors are ceramic (X7R/X5R) unless otherwise noted.
2) All capacitors and resistors are 0805 unless otherwise noted.
N 44400 54400 46700 54400 4
N 44800 52500 44800 53000 4
N 52100 53200 52300 53200 4
N 52300 53200 52300 55500 4
C 53300 45800 1 90 1 capacitor-1.sym
{
T 52600 45600 5 10 0 1 270 2 1
device=CAPACITOR
T 53000 45500 5 10 1 1 0 6 1
refdes=C3
T 52400 45600 5 10 0 0 270 2 1
symversion=0.1
T 53000 45000 5 10 1 1 0 6 1
value=22pF
T 53300 45800 5 10 0 0 0 6 1
footprint=0805
T 53000 44800 5 10 1 1 0 6 1
description=16V, NP0
}
N 47500 53800 47500 52500 4
N 49000 53900 49000 54400 4
N 49000 53000 49000 52500 4
C 48800 53900 1 270 0 capacitor-1.sym
{
T 49500 53700 5 10 0 1 270 0 1
device=CAPACITOR
T 49100 53600 5 10 1 1 0 0 1
refdes=C6
T 49700 53700 5 10 0 0 270 0 1
symversion=0.1
T 49100 53100 5 10 1 1 0 0 1
value=1uF
T 49100 52700 5 10 0 1 0 0 1
footprint=0805
T 49100 52900 5 10 1 1 0 0 1
comment=16V
}
N 59000 48600 59600 48600 4
N 59600 44200 59600 48600 4
N 59000 48300 59300 48300 4
N 59300 43300 59300 48300 4
C 58900 42000 1 0 0 gnd-1.sym
N 59000 42300 59000 43900 4
N 54200 52800 53900 52800 4
{
T 53800 52800 5 10 1 1 0 7 1
netname=\_OE\_
}
N 58600 43000 60600 43000 4
{
T 60700 43000 5 10 1 1 0 1 1
netname=\_INT\_
}
N 54200 52500 53900 52500 4
{
T 53800 52500 5 10 1 1 0 7 1
netname=\_INT\_
}
N 50500 52800 50700 52800 4
N 58600 44500 60600 44500 4
{
T 60700 44500 5 10 1 1 0 1 1
netname=\_OE\_
}
N 58600 43600 60600 43600 4
{
T 60700 43600 5 10 1 1 0 1 1
netname=I2C_5V
}
N 58600 44200 60600 44200 4
{
T 60700 44200 5 10 1 1 0 1 1
netname=SDA
}
N 59000 43900 58600 43900 4
N 49200 55200 49800 55200 4
{
T 49100 55200 5 10 1 1 0 7 1
netname=I2C_5V
}
C 44600 53900 1 270 0 Cap_H-2.sym
{
T 44900 53700 5 10 1 1 0 0 1
refdes=C1
T 46100 53900 5 10 0 0 270 0 1
device=Capacitor
T 44900 53200 5 10 1 1 0 2 1
value=68uF
T 44600 53900 5 10 0 0 0 0 1
footprint=cap-elec-Panasonic-FK--D6.30-H5.80-mm
T 44900 52800 5 10 1 1 0 0 1
description=25V, Electrolytic
}
C 43500 54200 1 0 0 schottky-1.sym
{
T 43822 54872 5 10 0 0 0 0 1
device=DIODE
T 43800 54700 5 10 1 1 0 0 1
refdes=D2
T 43841 55032 5 10 0 1 0 0 1
footprint=SOD123
T 43300 53900 5 10 1 1 0 0 1
model=MBR0540LT1G
}
C 41300 43000 1 0 0 hole-1.sym
{
T 41300 43000 5 10 0 1 0 0 1
device=HOLE
T 41500 43600 5 10 1 1 0 4 1
refdes=H1
T 41300 43000 5 10 0 0 0 0 1
footprint=STANDOFF_HEX_n4
}
C 41800 43000 1 0 0 hole-1.sym
{
T 41800 43000 5 10 0 1 0 0 1
device=HOLE
T 42000 43600 5 10 1 1 0 4 1
refdes=H2
T 41800 43000 5 10 0 0 0 0 1
footprint=STANDOFF_HEX_n4
}
C 54200 47200 1 0 0 ATmega328-tqfp32.sym
{
T 58700 53700 5 10 1 1 0 6 1
refdes=U1
T 56595 50895 5 10 1 1 0 4 1
device=ATmega328
T 56600 50700 5 10 1 1 0 4 1
footprint=TQFP32
}
C 55700 43000 1 0 0 modular_6p6c_small_i2c.sym
{
T 55900 44800 5 10 1 1 0 0 1
refdes=J4
T 55700 47025 5 10 0 0 0 0 1
footprint=modular_6p6c_lp.fp
T 55900 44600 5 10 1 1 0 0 1
device=I2C 6p6c
}
C 41500 55600 1 0 0 pwrjack3-1.sym
{
T 41600 56100 5 10 0 0 0 0 1
device=PWRJACK
T 41500 55600 5 10 0 0 0 0 1
footprint=CUI_PJ-202AH
T 41500 56300 5 10 1 1 0 0 1
refdes=J2
}
N 42500 55900 42800 55900 4
N 42800 55500 42800 55900 4
C 42900 55200 1 0 1 gnd-1.sym
N 42500 55700 42800 55700 4
N 42500 56100 43200 56100 4
N 43200 56100 43200 54400 4
C 46700 53800 1 0 0 lm7805-1.sym
{
T 48100 54800 5 10 1 1 0 6 1
refdes=U2
T 46700 53800 5 10 0 1 0 0 1
footprint=RECOM-TO220
T 47600 53600 5 10 1 1 0 0 1
device=OKI-78SR-5
}
C 46200 53900 1 270 0 capacitor-1.sym
{
T 46900 53700 5 10 0 1 270 0 1
device=CAPACITOR
T 46500 53600 5 10 1 1 0 0 1
refdes=C2
T 47100 53700 5 10 0 0 270 0 1
symversion=0.1
T 46500 53100 5 10 1 1 0 0 1
value=10uF
T 46500 52900 5 10 1 1 0 0 1
description=50V
T 46500 52700 5 10 1 1 0 0 1
footprint=1210
}
N 46400 53000 46400 52500 4
N 46400 53900 46400 54400 4
C 49800 54200 1 0 0 header3-1.sym
{
T 50800 54850 5 10 0 0 0 0 1
device=HEADER3
T 50300 55700 5 10 1 1 0 3 1
refdes=JP1
T 49800 54200 5 10 0 0 0 0 1
footprint=JUMPER3
}
N 49800 54800 49500 54800 4
N 49500 54800 49500 55800 4
N 48300 54400 49800 54400 4
T 50700 55100 9 10 1 0 0 1 1
I2C
T 50700 54500 9 10 1 0 0 1 1
REG
T 50300 55500 9 10 1 0 0 3 1
Power Select
N 58600 43300 60600 43300 4
{
T 60700 43300 5 10 1 1 0 1 1
netname=SCL
}
C 40000 40000 0 0 0 title-bordered-C.sym
C 49300 55800 1 0 0 5V-plus-1.sym
{
T 49300 55800 5 10 0 0 0 0 1
netname=+5V
}
C 47900 52000 1 0 0 gnd-1.sym
N 48000 52300 48000 52500 4
C 54200 54800 1 180 0 resistor-1.sym
{
T 53900 54400 5 10 0 0 180 0 1
device=RESISTOR
T 54200 54800 5 10 0 0 180 0 1
footprint=0805
T 53700 54500 5 10 1 1 180 3 1
refdes=R1
T 53700 54900 5 10 1 1 180 5 1
value=330
}
C 55300 54900 1 180 0 led-3.sym
{
T 55300 54900 5 10 0 0 90 0 1
footprint=1206
T 54950 55050 5 10 1 1 180 5 1
device=GREEN LED
T 54850 54350 5 10 1 1 180 3 1
refdes=D1
}
N 54200 54700 54400 54700 4
N 53300 54700 53000 54700 4
N 55600 54700 55300 54700 4
N 53000 54700 53000 55500 4
C 55500 54100 1 0 0 gnd-1.sym
N 55600 54700 55600 54400 4
C 42300 43000 1 0 0 hole-1.sym
{
T 42300 43000 5 10 0 1 0 0 1
device=HOLE
T 42300 43000 5 10 0 0 0 0 1
footprint=STANDOFF_HEX_n4
T 42500 43600 5 10 1 1 0 4 1
refdes=H3
}
C 42800 43000 1 0 0 hole-1.sym
{
T 42800 43000 5 10 0 1 0 0 1
device=HOLE
T 42800 43000 5 10 0 0 0 0 1
footprint=STANDOFF_HEX_n4
T 43000 43600 5 10 1 1 0 4 1
refdes=H4
}
T 55000 40900 9 10 1 0 0 0 1
I2C VFD Backpack
T 54800 40600 9 10 1 0 0 0 1
i2c-vfd.sch
T 55000 40300 9 10 1 0 0 0 1
1
T 56500 40300 9 10 1 0 0 0 1
1
T 58800 40300 9 10 1 0 0 0 1
Michael Petersen
N 54200 49800 45700 49800 4
C 57200 55300 1 270 0 capacitor-1.sym
{
T 57900 55100 5 10 0 1 270 0 1
device=CAPACITOR
T 58100 55100 5 10 0 0 270 0 1
symversion=0.1
T 57500 54100 5 10 0 1 0 0 1
footprint=0805
T 57500 55000 5 10 1 1 0 0 1
refdes=C7
T 57500 54500 5 10 1 1 0 0 1
value=0.1uF
T 57500 54300 5 10 1 1 0 0 1
comment=16V
}
C 57300 53900 1 0 0 gnd-1.sym
N 57400 54200 57400 54400 4
N 57400 55300 57400 55500 4
C 59800 53700 1 270 0 capacitor-1.sym
{
T 60500 53500 5 10 0 1 270 0 1
device=CAPACITOR
T 60700 53500 5 10 0 0 270 0 1
symversion=0.1
T 60100 52500 5 10 0 1 0 0 1
footprint=0805
T 60100 53400 5 10 1 1 0 0 1
refdes=C8
T 60100 52900 5 10 1 1 0 0 1
value=0.1uF
T 60100 52700 5 10 1 1 0 0 1
comment=16V
}
C 59900 52300 1 0 0 gnd-1.sym
N 60000 52600 60000 52800 4
N 60000 53700 60000 54000 4
N 60000 54000 59300 54000 4
C 46700 41700 1 0 0 dc1613.sym
{
T 47000 46200 5 10 1 1 0 0 1
refdes=J6
T 47000 46000 5 10 1 1 0 0 1
device=DC1613 Connector
T 47000 48700 5 10 0 0 0 0 1
footprint=LTC_DC1613
T 46700 41700 5 10 0 0 0 0 1
footprint=JUMPER6x2-2mm
}
N 50000 42600 48500 42600 4
N 50000 42300 48500 42300 4
N 50000 43200 48500 43200 4
N 50000 42900 48500 42900 4
N 50000 43800 48500 43800 4
N 50000 43500 48500 43500 4
N 50000 44400 48500 44400 4
N 50000 44100 48500 44100 4
N 50000 45000 48500 45000 4
N 50000 44700 48500 44700 4
N 50000 45600 48500 45600 4
N 50000 45300 48500 45300 4
C 49600 41700 1 0 0 gnd-1.sym
N 49700 42000 49700 42900 4
N 49400 42900 49400 45000 4
N 49300 45600 49300 46300 4
{
T 49300 46400 5 10 1 1 0 3 1
netname=I2C_5V
}
N 49100 45300 49100 41300 4
N 49100 41300 51000 41300 4
{
T 51100 41300 5 10 1 1 0 1 1
netname=SDA
}
N 48800 44700 48800 41000 4
N 48800 41000 51000 41000 4
{
T 51100 41000 5 10 1 1 0 1 1
netname=SCL
}
C 51800 41700 1 0 1 dc1613.sym
{
T 51500 46200 5 10 1 1 0 6 1
refdes=J5
T 51500 46000 5 10 1 1 0 6 1
device=DC1613 Connector
T 51500 48700 5 10 0 0 0 6 1
footprint=LTC_DC1613
T 51800 41700 5 10 0 0 0 6 1
footprint=JUMPER6x2-2mm
}
C 45700 48000 1 0 1 header6-1.sym
{
T 44700 48650 5 10 0 0 0 6 1
device=HEADER3
T 45300 50500 5 10 1 1 0 6 1
refdes=J7
}
T 44900 50200 9 10 1 0 0 7 1
VCC
T 44900 49800 9 10 1 0 0 7 1
SIN
T 44900 49400 9 10 1 0 0 7 1
GND
T 44900 49000 9 10 1 0 0 7 1
SBUSY
T 44900 48600 9 10 1 0 0 7 1
NC
T 44900 48200 9 10 1 0 0 7 1
\_RESET
C 45900 50500 1 0 0 5V-plus-1.sym
{
T 45900 50500 5 10 0 0 0 0 1
netname=+5V
}
C 46000 47700 1 0 0 gnd-1.sym
N 46100 48000 46100 49400 4
N 46100 49400 45700 49400 4
N 46100 50500 46100 50200 4
N 46100 50200 45700 50200 4
N 45700 48200 51500 48200 4
N 51500 48200 51500 48000 4
N 51500 48000 54200 48000 4
N 45700 49000 51800 49000 4
N 51800 48300 51800 49000 4
N 51800 48300 54200 48300 4
