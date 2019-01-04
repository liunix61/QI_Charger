EESchema Schematic File Version 4
LIBS:QI_Charger-cache
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 12 15
Title "QI Charger"
Date "2019-01-03"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor_Temperature:LM73 U1201
U 1 1 5C32D114
P 4160 1830
F 0 "U1201" H 3660 2280 50  0000 L CNN
F 1 "LM73-1" H 3660 2180 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4610 2180 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm73.pdf" H 3760 2280 50  0001 C CNN
F 4 "LM73CIMK-1/NOPBCT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    4160 1830
	1    0    0    -1  
$EndComp
NoConn ~ 4760 1930
$Comp
L power:+5V #PWR0313
U 1 1 5C272891
P 4160 1430
F 0 "#PWR0313" H 4160 1280 50  0001 C CNN
F 1 "+5V" H 4160 1570 50  0000 C CNN
F 2 "" H 4160 1430 50  0001 C CNN
F 3 "" H 4160 1430 50  0001 C CNN
	1    4160 1430
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0314
U 1 1 5C2728CE
P 4160 2230
F 0 "#PWR0314" H 4160 1980 50  0001 C CNN
F 1 "GND" H 4160 2080 50  0000 C CNN
F 2 "" H 4160 2230 50  0001 C CNN
F 3 "" H 4160 2230 50  0001 C CNN
	1    4160 2230
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C273883
P 3120 1360
AR Path="/5BB27BA3/5C273883" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C273883" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C273883" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C273883" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C273883" Ref="R1210"  Part="1" 
F 0 "R1210" H 3040 1360 50  0000 R CNN
F 1 "10k" V 3120 1360 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3120 1360 50  0001 C CNN
F 3 "" H 3120 1360 50  0001 C CNN
F 4 "0603" H 3220 1440 50  0000 L CNN "display_footprint"
F 5 "1%" H 3220 1360 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3230 1280 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3420 1760 60  0001 C CNN "Digi-Key PN"
	1    3120 1360
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C27388E
P 2370 1360
AR Path="/5BB27BA3/5C27388E" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C27388E" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C27388E" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C27388E" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C27388E" Ref="R1207"  Part="1" 
F 0 "R1207" H 2290 1360 50  0000 R CNN
F 1 "10k" V 2370 1360 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2370 1360 50  0001 C CNN
F 3 "" H 2370 1360 50  0001 C CNN
F 4 "0603" H 2470 1440 50  0000 L CNN "display_footprint"
F 5 "1%" H 2470 1360 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2480 1280 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 2670 1760 60  0001 C CNN "Digi-Key PN"
	1    2370 1360
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C273899
P 1520 1730
AR Path="/5A2D2FD2/5C273899" Ref="R?"  Part="1" 
AR Path="/5A0A8BD0/5C273899" Ref="R?"  Part="1" 
AR Path="/5BB27BCC/5C273899" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C273899" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C273899" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C273899" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C273899" Ref="R1201"  Part="1" 
F 0 "R1201" V 1600 1730 50  0000 C CNN
F 1 "0" V 1520 1730 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1450 1730 50  0001 C CNN
F 3 "" V 1600 1730 50  0001 C CNN
F 4 "1%" V 1260 1730 50  0001 C CNN "Tolerance"
F 5 "1/10W" V 1420 1730 50  0001 C CNN "Wattage"
F 6 "0603" V 1340 1730 50  0001 C CNN "display_footprint"
F 7 "P0.0GCT-ND" H -2420 -1800 50  0001 C CNN "Digi-Key PN"
	1    1520 1730
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C2738A4
P 1520 1930
AR Path="/5A2D2FD2/5C2738A4" Ref="R?"  Part="1" 
AR Path="/5A0A8BD0/5C2738A4" Ref="R?"  Part="1" 
AR Path="/5BB27BCC/5C2738A4" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C2738A4" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C2738A4" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C2738A4" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C2738A4" Ref="R1202"  Part="1" 
F 0 "R1202" V 1600 1930 50  0000 C CNN
F 1 "0" V 1520 1930 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1450 1930 50  0001 C CNN
F 3 "" V 1600 1930 50  0001 C CNN
F 4 "1%" V 1260 1930 50  0001 C CNN "Tolerance"
F 5 "1/10W" V 1420 1930 50  0001 C CNN "Wattage"
F 6 "0603" V 1340 1930 50  0001 C CNN "display_footprint"
F 7 "P0.0GCT-ND" H -2420 -1700 50  0001 C CNN "Digi-Key PN"
	1    1520 1930
	0    1    1    0   
$EndComp
Wire Wire Line
	1670 1730 3120 1730
Wire Wire Line
	1670 1930 2370 1930
Wire Wire Line
	3120 1510 3120 1730
Text GLabel 1370 1730 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 1370 1930 0    50   Input ~ 0
I2C_SCL
$Comp
L power:+5V #PWR?
U 1 1 5C2738B3
P 2370 1210
AR Path="/5C1DE17A/5C2738B3" Ref="#PWR?"  Part="1" 
AR Path="/5C1D5CCA/5C2738B3" Ref="#PWR?"  Part="1" 
AR Path="/5C1E146B/5C2738B3" Ref="#PWR0315"  Part="1" 
F 0 "#PWR0315" H 2370 1060 50  0001 C CNN
F 1 "+5V" H 2370 1350 50  0000 C CNN
F 2 "" H 2370 1210 50  0001 C CNN
F 3 "" H 2370 1210 50  0001 C CNN
	1    2370 1210
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C2738B9
P 3120 1210
AR Path="/5C1DE17A/5C2738B9" Ref="#PWR?"  Part="1" 
AR Path="/5C1D5CCA/5C2738B9" Ref="#PWR?"  Part="1" 
AR Path="/5C1E146B/5C2738B9" Ref="#PWR0316"  Part="1" 
F 0 "#PWR0316" H 3120 1060 50  0001 C CNN
F 1 "+5V" H 3120 1350 50  0000 C CNN
F 2 "" H 3120 1210 50  0001 C CNN
F 3 "" H 3120 1210 50  0001 C CNN
	1    3120 1210
	1    0    0    -1  
$EndComp
Text Label 1750 1730 0    50   ~ 0
Temp1_I2C_SDA
Text Label 1750 1930 0    50   ~ 0
Temp1_I2C_SCL
Wire Wire Line
	2370 1510 2370 1930
Wire Wire Line
	3560 1730 3120 1730
Connection ~ 3120 1730
Wire Wire Line
	3560 1930 2370 1930
Connection ~ 2370 1930
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C27692C
P 3550 2620
AR Path="/5BB27BA3/5C27692C" Ref="C?"  Part="1" 
AR Path="/5BB27BE1/5C27692C" Ref="C?"  Part="1" 
AR Path="/5C1F3323/5C27692C" Ref="C?"  Part="1" 
AR Path="/5C1E146B/5C27692C" Ref="C1201"  Part="1" 
F 0 "C1201" H 3575 2720 50  0000 L CNN
F 1 "0.1uF" H 3575 2520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3588 2470 50  0001 C CNN
F 3 "" H 3575 2720 50  0001 C CNN
F 4 "0603" H 3400 2720 50  0000 R CNN "display_footprint"
F 5 "50V" H 3400 2620 50  0000 R CNN "Voltage"
F 6 "X7R" H 3400 2520 50  0000 R CNN "Dielectric"
F 7 "490-8020-1-ND" H 3975 3120 60  0001 C CNN "Digi-Key PN"
	1    3550 2620
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0317
U 1 1 5C276933
P 3550 2770
F 0 "#PWR0317" H 3550 2520 50  0001 C CNN
F 1 "GND" H 3550 2620 50  0000 C CNN
F 2 "" H 3550 2770 50  0001 C CNN
F 3 "" H 3550 2770 50  0001 C CNN
	1    3550 2770
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0318
U 1 1 5C276939
P 3550 2470
F 0 "#PWR0318" H 3550 2320 50  0001 C CNN
F 1 "+5V" H 3550 2610 50  0000 C CNN
F 2 "" H 3550 2470 50  0001 C CNN
F 3 "" H 3550 2470 50  0001 C CNN
	1    3550 2470
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:LM73 U1202
U 1 1 5C276A02
P 4160 4080
F 0 "U1202" H 3660 4530 50  0000 L CNN
F 1 "LM73-1" H 3660 4430 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4610 4430 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm73.pdf" H 3760 4530 50  0001 C CNN
F 4 "LM73CIMK-1/NOPBCT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    4160 4080
	1    0    0    -1  
$EndComp
NoConn ~ 4760 4180
NoConn ~ 4760 3980
$Comp
L power:+5V #PWR0319
U 1 1 5C276A0B
P 4160 3680
F 0 "#PWR0319" H 4160 3530 50  0001 C CNN
F 1 "+5V" H 4160 3820 50  0000 C CNN
F 2 "" H 4160 3680 50  0001 C CNN
F 3 "" H 4160 3680 50  0001 C CNN
	1    4160 3680
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0320
U 1 1 5C276A11
P 4160 4480
F 0 "#PWR0320" H 4160 4230 50  0001 C CNN
F 1 "GND" H 4160 4330 50  0000 C CNN
F 2 "" H 4160 4480 50  0001 C CNN
F 3 "" H 4160 4480 50  0001 C CNN
	1    4160 4480
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276A1B
P 3120 3610
AR Path="/5BB27BA3/5C276A1B" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276A1B" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276A1B" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276A1B" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276A1B" Ref="R1211"  Part="1" 
F 0 "R1211" H 3040 3610 50  0000 R CNN
F 1 "10k" V 3120 3610 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3120 3610 50  0001 C CNN
F 3 "" H 3120 3610 50  0001 C CNN
F 4 "0603" H 3220 3690 50  0000 L CNN "display_footprint"
F 5 "1%" H 3220 3610 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3230 3530 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3420 4010 60  0001 C CNN "Digi-Key PN"
	1    3120 3610
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276A26
P 2370 3610
AR Path="/5BB27BA3/5C276A26" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276A26" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276A26" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276A26" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276A26" Ref="R1208"  Part="1" 
F 0 "R1208" H 2290 3610 50  0000 R CNN
F 1 "10k" V 2370 3610 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2370 3610 50  0001 C CNN
F 3 "" H 2370 3610 50  0001 C CNN
F 4 "0603" H 2470 3690 50  0000 L CNN "display_footprint"
F 5 "1%" H 2470 3610 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2480 3530 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 2670 4010 60  0001 C CNN "Digi-Key PN"
	1    2370 3610
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276A31
P 1520 3980
AR Path="/5A2D2FD2/5C276A31" Ref="R?"  Part="1" 
AR Path="/5A0A8BD0/5C276A31" Ref="R?"  Part="1" 
AR Path="/5BB27BCC/5C276A31" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276A31" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276A31" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276A31" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276A31" Ref="R1203"  Part="1" 
F 0 "R1203" V 1600 3980 50  0000 C CNN
F 1 "0" V 1520 3980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1450 3980 50  0001 C CNN
F 3 "" V 1600 3980 50  0001 C CNN
F 4 "1%" V 1260 3980 50  0001 C CNN "Tolerance"
F 5 "1/10W" V 1420 3980 50  0001 C CNN "Wattage"
F 6 "0603" V 1340 3980 50  0001 C CNN "display_footprint"
F 7 "P0.0GCT-ND" H -2420 450 50  0001 C CNN "Digi-Key PN"
	1    1520 3980
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276A3C
P 1520 4180
AR Path="/5A2D2FD2/5C276A3C" Ref="R?"  Part="1" 
AR Path="/5A0A8BD0/5C276A3C" Ref="R?"  Part="1" 
AR Path="/5BB27BCC/5C276A3C" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276A3C" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276A3C" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276A3C" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276A3C" Ref="R1204"  Part="1" 
F 0 "R1204" V 1600 4180 50  0000 C CNN
F 1 "0" V 1520 4180 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1450 4180 50  0001 C CNN
F 3 "" V 1600 4180 50  0001 C CNN
F 4 "1%" V 1260 4180 50  0001 C CNN "Tolerance"
F 5 "1/10W" V 1420 4180 50  0001 C CNN "Wattage"
F 6 "0603" V 1340 4180 50  0001 C CNN "display_footprint"
F 7 "P0.0GCT-ND" H -2420 550 50  0001 C CNN "Digi-Key PN"
	1    1520 4180
	0    1    1    0   
$EndComp
Wire Wire Line
	1670 3980 3120 3980
Wire Wire Line
	1670 4180 2370 4180
Wire Wire Line
	3120 3760 3120 3980
Text GLabel 1370 3980 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 1370 4180 0    50   Input ~ 0
I2C_SCL
$Comp
L power:+5V #PWR?
U 1 1 5C276A48
P 2370 3460
AR Path="/5C1DE17A/5C276A48" Ref="#PWR?"  Part="1" 
AR Path="/5C1D5CCA/5C276A48" Ref="#PWR?"  Part="1" 
AR Path="/5C1E146B/5C276A48" Ref="#PWR0321"  Part="1" 
F 0 "#PWR0321" H 2370 3310 50  0001 C CNN
F 1 "+5V" H 2370 3600 50  0000 C CNN
F 2 "" H 2370 3460 50  0001 C CNN
F 3 "" H 2370 3460 50  0001 C CNN
	1    2370 3460
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C276A4E
P 3120 3460
AR Path="/5C1DE17A/5C276A4E" Ref="#PWR?"  Part="1" 
AR Path="/5C1D5CCA/5C276A4E" Ref="#PWR?"  Part="1" 
AR Path="/5C1E146B/5C276A4E" Ref="#PWR0322"  Part="1" 
F 0 "#PWR0322" H 3120 3310 50  0001 C CNN
F 1 "+5V" H 3120 3600 50  0000 C CNN
F 2 "" H 3120 3460 50  0001 C CNN
F 3 "" H 3120 3460 50  0001 C CNN
	1    3120 3460
	1    0    0    -1  
$EndComp
Text Label 1750 3980 0    50   ~ 0
Temp2_I2C_SDA
Text Label 1750 4180 0    50   ~ 0
Temp2_I2C_SCL
Wire Wire Line
	2370 3760 2370 4180
Wire Wire Line
	3560 3980 3120 3980
Connection ~ 3120 3980
Wire Wire Line
	3560 4180 2370 4180
Connection ~ 2370 4180
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C276A5F
P 3550 4870
AR Path="/5BB27BA3/5C276A5F" Ref="C?"  Part="1" 
AR Path="/5BB27BE1/5C276A5F" Ref="C?"  Part="1" 
AR Path="/5C1F3323/5C276A5F" Ref="C?"  Part="1" 
AR Path="/5C1E146B/5C276A5F" Ref="C1202"  Part="1" 
F 0 "C1202" H 3575 4970 50  0000 L CNN
F 1 "0.1uF" H 3575 4770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3588 4720 50  0001 C CNN
F 3 "" H 3575 4970 50  0001 C CNN
F 4 "0603" H 3400 4970 50  0000 R CNN "display_footprint"
F 5 "50V" H 3400 4870 50  0000 R CNN "Voltage"
F 6 "X7R" H 3400 4770 50  0000 R CNN "Dielectric"
F 7 "490-8020-1-ND" H 3975 5370 60  0001 C CNN "Digi-Key PN"
	1    3550 4870
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0323
U 1 1 5C276A66
P 3550 5020
F 0 "#PWR0323" H 3550 4770 50  0001 C CNN
F 1 "GND" H 3550 4870 50  0000 C CNN
F 2 "" H 3550 5020 50  0001 C CNN
F 3 "" H 3550 5020 50  0001 C CNN
	1    3550 5020
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0324
U 1 1 5C276A6C
P 3550 4720
F 0 "#PWR0324" H 3550 4570 50  0001 C CNN
F 1 "+5V" H 3550 4860 50  0000 C CNN
F 2 "" H 3550 4720 50  0001 C CNN
F 3 "" H 3550 4720 50  0001 C CNN
	1    3550 4720
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:LM73 U1203
U 1 1 5C276E40
P 4160 6330
F 0 "U1203" H 3660 6780 50  0000 L CNN
F 1 "LM73-1" H 3660 6680 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 4610 6680 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm73.pdf" H 3760 6780 50  0001 C CNN
F 4 "LM73CIMK-1/NOPBCT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    4160 6330
	1    0    0    -1  
$EndComp
NoConn ~ 4760 6430
$Comp
L power:+5V #PWR0325
U 1 1 5C276E49
P 4160 5930
F 0 "#PWR0325" H 4160 5780 50  0001 C CNN
F 1 "+5V" H 4160 6070 50  0000 C CNN
F 2 "" H 4160 5930 50  0001 C CNN
F 3 "" H 4160 5930 50  0001 C CNN
	1    4160 5930
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0326
U 1 1 5C276E4F
P 4160 6730
F 0 "#PWR0326" H 4160 6480 50  0001 C CNN
F 1 "GND" H 4160 6580 50  0000 C CNN
F 2 "" H 4160 6730 50  0001 C CNN
F 3 "" H 4160 6730 50  0001 C CNN
	1    4160 6730
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276E59
P 3120 5860
AR Path="/5BB27BA3/5C276E59" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276E59" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276E59" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276E59" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276E59" Ref="R1212"  Part="1" 
F 0 "R1212" H 3040 5860 50  0000 R CNN
F 1 "10k" V 3120 5860 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3120 5860 50  0001 C CNN
F 3 "" H 3120 5860 50  0001 C CNN
F 4 "0603" H 3220 5940 50  0000 L CNN "display_footprint"
F 5 "1%" H 3220 5860 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3230 5780 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3420 6260 60  0001 C CNN "Digi-Key PN"
	1    3120 5860
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276E64
P 2370 5860
AR Path="/5BB27BA3/5C276E64" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276E64" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276E64" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276E64" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276E64" Ref="R1209"  Part="1" 
F 0 "R1209" H 2290 5860 50  0000 R CNN
F 1 "10k" V 2370 5860 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2370 5860 50  0001 C CNN
F 3 "" H 2370 5860 50  0001 C CNN
F 4 "0603" H 2470 5940 50  0000 L CNN "display_footprint"
F 5 "1%" H 2470 5860 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2480 5780 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 2670 6260 60  0001 C CNN "Digi-Key PN"
	1    2370 5860
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276E6F
P 1520 6230
AR Path="/5A2D2FD2/5C276E6F" Ref="R?"  Part="1" 
AR Path="/5A0A8BD0/5C276E6F" Ref="R?"  Part="1" 
AR Path="/5BB27BCC/5C276E6F" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276E6F" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276E6F" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276E6F" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276E6F" Ref="R1205"  Part="1" 
F 0 "R1205" V 1600 6230 50  0000 C CNN
F 1 "0" V 1520 6230 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1450 6230 50  0001 C CNN
F 3 "" V 1600 6230 50  0001 C CNN
F 4 "1%" V 1260 6230 50  0001 C CNN "Tolerance"
F 5 "1/10W" V 1420 6230 50  0001 C CNN "Wattage"
F 6 "0603" V 1340 6230 50  0001 C CNN "display_footprint"
F 7 "P0.0GCT-ND" H -2420 2700 50  0001 C CNN "Digi-Key PN"
	1    1520 6230
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C276E7A
P 1520 6430
AR Path="/5A2D2FD2/5C276E7A" Ref="R?"  Part="1" 
AR Path="/5A0A8BD0/5C276E7A" Ref="R?"  Part="1" 
AR Path="/5BB27BCC/5C276E7A" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C276E7A" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C276E7A" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C276E7A" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C276E7A" Ref="R1206"  Part="1" 
F 0 "R1206" V 1600 6430 50  0000 C CNN
F 1 "0" V 1520 6430 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 1450 6430 50  0001 C CNN
F 3 "" V 1600 6430 50  0001 C CNN
F 4 "1%" V 1260 6430 50  0001 C CNN "Tolerance"
F 5 "1/10W" V 1420 6430 50  0001 C CNN "Wattage"
F 6 "0603" V 1340 6430 50  0001 C CNN "display_footprint"
F 7 "P0.0GCT-ND" H -2420 2800 50  0001 C CNN "Digi-Key PN"
	1    1520 6430
	0    1    1    0   
$EndComp
Wire Wire Line
	1670 6230 3120 6230
Wire Wire Line
	1670 6430 2370 6430
Wire Wire Line
	3120 6010 3120 6230
Text GLabel 1370 6230 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 1370 6430 0    50   Input ~ 0
I2C_SCL
$Comp
L power:+5V #PWR?
U 1 1 5C276E86
P 2370 5710
AR Path="/5C1DE17A/5C276E86" Ref="#PWR?"  Part="1" 
AR Path="/5C1D5CCA/5C276E86" Ref="#PWR?"  Part="1" 
AR Path="/5C1E146B/5C276E86" Ref="#PWR0327"  Part="1" 
F 0 "#PWR0327" H 2370 5560 50  0001 C CNN
F 1 "+5V" H 2370 5850 50  0000 C CNN
F 2 "" H 2370 5710 50  0001 C CNN
F 3 "" H 2370 5710 50  0001 C CNN
	1    2370 5710
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C276E8C
P 3120 5710
AR Path="/5C1DE17A/5C276E8C" Ref="#PWR?"  Part="1" 
AR Path="/5C1D5CCA/5C276E8C" Ref="#PWR?"  Part="1" 
AR Path="/5C1E146B/5C276E8C" Ref="#PWR0328"  Part="1" 
F 0 "#PWR0328" H 3120 5560 50  0001 C CNN
F 1 "+5V" H 3120 5850 50  0000 C CNN
F 2 "" H 3120 5710 50  0001 C CNN
F 3 "" H 3120 5710 50  0001 C CNN
	1    3120 5710
	1    0    0    -1  
$EndComp
Text Label 1750 6230 0    50   ~ 0
Temp3_I2C_SDA
Text Label 1750 6430 0    50   ~ 0
Temp3_I2C_SCL
Wire Wire Line
	2370 6010 2370 6430
Wire Wire Line
	3560 6230 3120 6230
Connection ~ 3120 6230
Wire Wire Line
	3560 6430 2370 6430
Connection ~ 2370 6430
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C276E9D
P 3550 7120
AR Path="/5BB27BA3/5C276E9D" Ref="C?"  Part="1" 
AR Path="/5BB27BE1/5C276E9D" Ref="C?"  Part="1" 
AR Path="/5C1F3323/5C276E9D" Ref="C?"  Part="1" 
AR Path="/5C1E146B/5C276E9D" Ref="C1203"  Part="1" 
F 0 "C1203" H 3575 7220 50  0000 L CNN
F 1 "0.1uF" H 3575 7020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3588 6970 50  0001 C CNN
F 3 "" H 3575 7220 50  0001 C CNN
F 4 "0603" H 3400 7220 50  0000 R CNN "display_footprint"
F 5 "50V" H 3400 7120 50  0000 R CNN "Voltage"
F 6 "X7R" H 3400 7020 50  0000 R CNN "Dielectric"
F 7 "490-8020-1-ND" H 3975 7620 60  0001 C CNN "Digi-Key PN"
	1    3550 7120
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0329
U 1 1 5C276EA4
P 3550 7270
F 0 "#PWR0329" H 3550 7020 50  0001 C CNN
F 1 "GND" H 3550 7120 50  0000 C CNN
F 2 "" H 3550 7270 50  0001 C CNN
F 3 "" H 3550 7270 50  0001 C CNN
	1    3550 7270
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0330
U 1 1 5C276EAA
P 3550 6970
F 0 "#PWR0330" H 3550 6820 50  0001 C CNN
F 1 "+5V" H 3550 7110 50  0000 C CNN
F 2 "" H 3550 6970 50  0001 C CNN
F 3 "" H 3550 6970 50  0001 C CNN
	1    3550 6970
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C2771C6
P 5210 1960
AR Path="/5BB27BA3/5C2771C6" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C2771C6" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C2771C6" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C2771C6" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C2771C6" Ref="R1213"  Part="1" 
F 0 "R1213" H 5130 1960 50  0000 R CNN
F 1 "10k" V 5210 1960 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5210 1960 50  0001 C CNN
F 3 "" H 5210 1960 50  0001 C CNN
F 4 "0603" H 5310 2040 50  0000 L CNN "display_footprint"
F 5 "1%" H 5310 1960 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5320 1880 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 5510 2360 60  0001 C CNN "Digi-Key PN"
	1    5210 1960
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0331
U 1 1 5C277255
P 5210 2110
F 0 "#PWR0331" H 5210 1860 50  0001 C CNN
F 1 "GND" H 5210 1960 50  0000 C CNN
F 2 "" H 5210 2110 50  0001 C CNN
F 3 "" H 5210 2110 50  0001 C CNN
	1    5210 2110
	1    0    0    -1  
$EndComp
Wire Wire Line
	5210 1810 5210 1730
Wire Wire Line
	5210 1730 4760 1730
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C277540
P 5210 6040
AR Path="/5BB27BA3/5C277540" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C277540" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C277540" Ref="R?"  Part="1" 
AR Path="/5C1D5CCA/5C277540" Ref="R?"  Part="1" 
AR Path="/5C1E146B/5C277540" Ref="R1214"  Part="1" 
F 0 "R1214" H 5130 6040 50  0000 R CNN
F 1 "10k" V 5210 6040 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5210 6040 50  0001 C CNN
F 3 "" H 5210 6040 50  0001 C CNN
F 4 "0603" H 5310 6120 50  0000 L CNN "display_footprint"
F 5 "1%" H 5310 6040 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5320 5960 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 5510 6440 60  0001 C CNN "Digi-Key PN"
	1    5210 6040
	1    0    0    -1  
$EndComp
Wire Wire Line
	5210 6230 4760 6230
$Comp
L power:+5V #PWR0332
U 1 1 5C277BD0
P 5210 5890
F 0 "#PWR0332" H 5210 5740 50  0001 C CNN
F 1 "+5V" H 5210 6030 50  0000 C CNN
F 2 "" H 5210 5890 50  0001 C CNN
F 3 "" H 5210 5890 50  0001 C CNN
	1    5210 5890
	1    0    0    -1  
$EndComp
Wire Wire Line
	5210 6230 5210 6190
$Comp
L Custom_Library:I2C_Address DOC1201
U 1 1 5C27A04D
P 2370 2430
F 0 "DOC1201" H 2370 2680 60  0001 C CNN
F 1 "0x4D" H 1920 2430 60  0000 L CNN
F 2 "" H 2370 2780 60  0001 C CNN
F 3 "" H 2370 2780 60  0001 C CNN
	1    2370 2430
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC1202
U 1 1 5C27A0C3
P 2370 4680
F 0 "DOC1202" H 2370 4930 60  0001 C CNN
F 1 "0x4C" H 1920 4680 60  0000 L CNN
F 2 "" H 2370 5030 60  0001 C CNN
F 3 "" H 2370 5030 60  0001 C CNN
	1    2370 4680
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC1203
U 1 1 5C27A132
P 2370 6930
F 0 "DOC1203" H 2370 7180 60  0001 C CNN
F 1 "0x4F" H 1920 6930 60  0000 L CNN
F 2 "" H 2370 7280 60  0001 C CNN
F 3 "" H 2370 7280 60  0001 C CNN
	1    2370 6930
	1    0    0    -1  
$EndComp
$EndSCHEMATC
