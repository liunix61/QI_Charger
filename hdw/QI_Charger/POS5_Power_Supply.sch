EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 15
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
L Custom_Library:L_Custom L301
U 1 1 5C26EF0D
P 6060 2490
F 0 "L301" V 6010 2490 50  0000 C CNN
F 1 "2.2u" V 6135 2490 50  0000 C CNN
F 2 "Inductors_SMD:L_Vishay_IHLP-2020" H 6060 2490 50  0001 C CNN
F 3 "" H 6060 2490 50  0001 C CNN
F 4 "541-1236-1-ND" H 6060 2490 50  0001 C CNN "Digi-Key PN"
F 5 "IHLP2020" V 6210 2490 50  0000 C CNN "display_footprint"
F 6 "5.5A" V 6310 2490 50  0000 C CNN "Ampacity"
F 7 "20%" V 6410 2490 50  0000 C CNN "Tolerance"
	1    6060 2490
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5620 2890 6290 2890
Wire Wire Line
	6290 2890 6290 2490
Wire Wire Line
	6290 2490 6210 2490
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C26F85F
P 4280 2420
AR Path="/5BB27BA3/5C26F85F" Ref="C?"  Part="1" 
AR Path="/5BB27B84/5C26F85F" Ref="C?"  Part="1" 
AR Path="/5BB27B24/5C26F85F" Ref="C?"  Part="1" 
AR Path="/5BB27BB5/5C26F85F" Ref="C?"  Part="1" 
AR Path="/5BB27BF7/5C26F85F" Ref="C?"  Part="1" 
AR Path="/5C1DE17A/5C26F85F" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5C26F85F" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C26F85F" Ref="C303"  Part="1" 
F 0 "C303" H 4305 2520 50  0000 L CNN
F 1 "0.1uF" H 4305 2320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4318 2270 50  0001 C CNN
F 3 "" H 4305 2520 50  0001 C CNN
F 4 "0603" H 4130 2520 50  0000 R CNN "display_footprint"
F 5 "50V" H 4130 2420 50  0000 R CNN "Voltage"
F 6 "X7R" H 4130 2320 50  0000 R CNN "Dielectric"
F 7 "490-8020-1-ND" H 4705 2920 60  0001 C CNN "Digi-Key PN"
	1    4280 2420
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C26F8EC
P 4280 2570
F 0 "#PWR0118" H 4280 2320 50  0001 C CNN
F 1 "GND" H 4280 2420 50  0000 C CNN
F 2 "" H 4280 2570 50  0001 C CNN
F 3 "" H 4280 2570 50  0001 C CNN
	1    4280 2570
	1    0    0    -1  
$EndComp
Wire Wire Line
	4620 2190 4280 2190
Wire Wire Line
	4280 2190 4280 2270
$Comp
L Custom_Library:C_Custom C301
U 1 1 5C2703C2
P 2500 2420
F 0 "C301" H 2525 2520 50  0000 L CNN
F 1 "10uF" H 2525 2320 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2538 2270 50  0001 C CNN
F 3 "" H 2525 2520 50  0001 C CNN
F 4 "1206" H 2350 2520 50  0000 R CNN "display_footprint"
F 5 "25V" H 2350 2420 50  0000 R CNN "Voltage"
F 6 "X7R" H 2350 2320 50  0000 R CNN "Dielectric"
F 7 "1276-7031-1-ND" H 2925 2920 60  0001 C CNN "Digi-Key PN"
	1    2500 2420
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C27043B
P 2500 2570
F 0 "#PWR0119" H 2500 2320 50  0001 C CNN
F 1 "GND" H 2500 2420 50  0000 C CNN
F 2 "" H 2500 2570 50  0001 C CNN
F 3 "" H 2500 2570 50  0001 C CNN
	1    2500 2570
	1    0    0    -1  
$EndComp
Wire Wire Line
	4620 2090 4280 2090
Wire Wire Line
	2500 2090 2500 2270
Wire Wire Line
	4280 2190 4280 2090
Connection ~ 4280 2190
$Comp
L power:+12V #PWR0120
U 1 1 5C2705E0
P 2500 2010
F 0 "#PWR0120" H 2500 1860 50  0001 C CNN
F 1 "+12V" H 2500 2150 50  0000 C CNN
F 2 "" H 2500 2010 50  0001 C CNN
F 3 "" H 2500 2010 50  0001 C CNN
	1    2500 2010
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2010 2500 2090
Connection ~ 2500 2090
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C28103E
P 3400 2420
AR Path="/5BB27BA3/5C28103E" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C28103E" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C28103E" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C28103E" Ref="R302"  Part="1" 
F 0 "R302" H 3320 2420 50  0000 R CNN
F 1 "100k" V 3400 2420 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3400 2420 50  0001 C CNN
F 3 "" H 3400 2420 50  0001 C CNN
F 4 "0603" H 3500 2500 50  0000 L CNN "display_footprint"
F 5 "1%" H 3500 2420 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3510 2340 50  0000 L CNN "Wattage"
F 7 "A106046CT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    3400 2420
	1    0    0    -1  
$EndComp
Connection ~ 4280 2090
Wire Wire Line
	3400 2270 3400 2090
Wire Wire Line
	3400 2090 4280 2090
Wire Wire Line
	3400 2570 3400 2890
Wire Wire Line
	3400 2890 4620 2890
$Comp
L power:GND #PWR0121
U 1 1 5C281E24
P 3400 3410
F 0 "#PWR0121" H 3400 3160 50  0001 C CNN
F 1 "GND" H 3400 3260 50  0000 C CNN
F 2 "" H 3400 3410 50  0001 C CNN
F 3 "" H 3400 3410 50  0001 C CNN
	1    3400 3410
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5C288B4E
P 5120 4570
F 0 "#PWR0122" H 5120 4320 50  0001 C CNN
F 1 "GND" H 5120 4420 50  0000 C CNN
F 2 "" H 5120 4570 50  0001 C CNN
F 3 "" H 5120 4570 50  0001 C CNN
	1    5120 4570
	1    0    0    -1  
$EndComp
Wire Wire Line
	5120 4570 5120 4530
Wire Wire Line
	5120 4530 5220 4530
Wire Wire Line
	5220 4530 5220 4490
Connection ~ 5120 4530
Wire Wire Line
	5120 4530 5120 4490
Wire Wire Line
	5120 4530 5020 4530
Wire Wire Line
	5020 4530 5020 4490
$Comp
L power:GND #PWR0123
U 1 1 5C28E698
P 4540 4370
F 0 "#PWR0123" H 4540 4120 50  0001 C CNN
F 1 "GND" H 4540 4220 50  0000 C CNN
F 2 "" H 4540 4370 50  0001 C CNN
F 3 "" H 4540 4370 50  0001 C CNN
	1    4540 4370
	1    0    0    -1  
$EndComp
Wire Wire Line
	4540 4370 4540 4290
Wire Wire Line
	4540 4090 4620 4090
Wire Wire Line
	4620 4290 4540 4290
Connection ~ 4540 4290
Wire Wire Line
	4540 4290 4540 4090
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C28FDD2
P 7050 2730
AR Path="/5C1E3A0B/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C28FDD2" Ref="C307"  Part="1" 
F 0 "C307" H 7075 2830 50  0000 L CNN
F 1 "22uF" H 7075 2630 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7088 2580 50  0001 C CNN
F 3 "" H 7075 2830 50  0001 C CNN
F 4 "1206" H 6900 2830 50  0000 R CNN "display_footprint"
F 5 "10V" H 6900 2730 50  0000 R CNN "Voltage"
F 6 "X7R" H 6900 2630 50  0000 R CNN "Dielectric"
F 7 "1276-3148-1-ND" H 7475 3230 60  0001 C CNN "Digi-Key PN"
	1    7050 2730
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C2908D2
P 2500 3260
AR Path="/5BB27BA3/5C2908D2" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C2908D2" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C2908D2" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C2908D2" Ref="R301"  Part="1" 
F 0 "R301" H 2420 3260 50  0000 R CNN
F 1 "10k" V 2500 3260 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2500 3260 50  0001 C CNN
F 3 "" H 2500 3260 50  0001 C CNN
F 4 "0603" H 2600 3340 50  0000 L CNN "display_footprint"
F 5 "1%" H 2600 3260 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2610 3180 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 2800 3660 60  0001 C CNN "Digi-Key PN"
	1    2500 3260
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2090 3400 2090
Connection ~ 3400 2090
$Comp
L power:+5V #PWR0124
U 1 1 5C291FC4
P 2500 3110
F 0 "#PWR0124" H 2500 2960 50  0001 C CNN
F 1 "+5V" H 2500 3250 50  0000 C CNN
F 2 "" H 2500 3110 50  0001 C CNN
F 3 "" H 2500 3110 50  0001 C CNN
	1    2500 3110
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2890 3400 3110
Connection ~ 3400 2890
Wire Wire Line
	4620 3690 2500 3690
Wire Wire Line
	2500 3690 2500 3410
Text GLabel 2420 3690 0    50   Output ~ 0
POS5_PGOOD
Wire Wire Line
	2420 3690 2500 3690
Connection ~ 2500 3690
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C293FFC
P 3920 4220
AR Path="/5C1D5CD8/5C293FFC" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5C293FFC" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5C293FFC" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C293FFC" Ref="C302"  Part="1" 
F 0 "C302" H 3945 4320 50  0000 L CNN
F 1 "10nF" H 3945 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3958 4070 50  0001 C CNN
F 3 "" H 3945 4320 50  0001 C CNN
F 4 "0603" H 3770 4320 50  0000 R CNN "display_footprint"
F 5 "50V" H 3770 4220 50  0000 R CNN "Voltage"
F 6 "X7R" H 3770 4120 50  0000 R CNN "Dielectric"
F 7 "1276-1921-1-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    3920 4220
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5C294444
P 3920 4370
F 0 "#PWR0125" H 3920 4120 50  0001 C CNN
F 1 "GND" H 3920 4220 50  0000 C CNN
F 2 "" H 3920 4370 50  0001 C CNN
F 3 "" H 3920 4370 50  0001 C CNN
	1    3920 4370
	1    0    0    -1  
$EndComp
Wire Wire Line
	3920 4070 3920 3890
Wire Wire Line
	3920 3890 4620 3890
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C2959E0
P 6290 3260
AR Path="/5BB27BA3/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C2959E0" Ref="R306"  Part="1" 
F 0 "R306" H 6210 3260 50  0000 R CNN
F 1 "10.5k" V 6290 3260 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6290 3260 50  0001 C CNN
F 3 "" H 6290 3260 50  0001 C CNN
F 4 "0603" H 6390 3340 50  0000 L CNN "display_footprint"
F 5 "1%" H 6390 3260 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6400 3180 50  0000 L CNN "Wattage"
F 7 "311-10.5KHRCT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    6290 3260
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C295A52
P 6290 4170
AR Path="/5BB27BA3/5C295A52" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C295A52" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C295A52" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C295A52" Ref="R307"  Part="1" 
F 0 "R307" H 6210 4170 50  0000 R CNN
F 1 "2k" V 6290 4170 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6290 4170 50  0001 C CNN
F 3 "" H 6290 4170 50  0001 C CNN
F 4 "0603" H 6390 4250 50  0000 L CNN "display_footprint"
F 5 "1%" H 6390 4170 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6400 4090 50  0000 L CNN "Wattage"
F 7 "311-2.00KHRCT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    6290 4170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5C295AD9
P 6290 4320
F 0 "#PWR0126" H 6290 4070 50  0001 C CNN
F 1 "GND" H 6290 4170 50  0000 C CNN
F 2 "" H 6290 4320 50  0001 C CNN
F 3 "" H 6290 4320 50  0001 C CNN
	1    6290 4320
	1    0    0    -1  
$EndComp
Wire Wire Line
	6290 3690 5620 3690
Wire Wire Line
	6290 3690 6290 3410
Connection ~ 6290 3690
Wire Wire Line
	6290 3110 6290 2890
Connection ~ 6290 2890
Wire Wire Line
	6290 3690 6290 4020
$Comp
L power:GND #PWR0127
U 1 1 5C298A57
P 7050 2880
F 0 "#PWR0127" H 7050 2630 50  0001 C CNN
F 1 "GND" H 7050 2730 50  0000 C CNN
F 2 "" H 7050 2880 50  0001 C CNN
F 3 "" H 7050 2880 50  0001 C CNN
	1    7050 2880
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2580 7050 2490
Wire Wire Line
	7050 2490 6290 2490
Connection ~ 6290 2490
$Comp
L power:+5V #PWR0128
U 1 1 5C29A119
P 7800 2410
F 0 "#PWR0128" H 7800 2260 50  0001 C CNN
F 1 "+5V" H 7800 2550 50  0000 C CNN
F 2 "" H 7800 2410 50  0001 C CNN
F 3 "" H 7800 2410 50  0001 C CNN
	1    7800 2410
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C29AF9B
P 7800 2730
AR Path="/5C1E3A0B/5C29AF9B" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C29AF9B" Ref="C308"  Part="1" 
F 0 "C308" H 7825 2830 50  0000 L CNN
F 1 "22uF" H 7825 2630 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7838 2580 50  0001 C CNN
F 3 "" H 7825 2830 50  0001 C CNN
F 4 "1206" H 7650 2830 50  0000 R CNN "display_footprint"
F 5 "10V" H 7650 2730 50  0000 R CNN "Voltage"
F 6 "X7R" H 7650 2630 50  0000 R CNN "Dielectric"
F 7 "1276-3148-1-ND" H 8225 3230 60  0001 C CNN "Digi-Key PN"
	1    7800 2730
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5C29AFE1
P 7800 2880
F 0 "#PWR0129" H 7800 2630 50  0001 C CNN
F 1 "GND" H 7800 2730 50  0000 C CNN
F 2 "" H 7800 2880 50  0001 C CNN
F 3 "" H 7800 2880 50  0001 C CNN
	1    7800 2880
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2490 7800 2490
Wire Wire Line
	7800 2490 7800 2580
Connection ~ 7050 2490
Wire Wire Line
	7800 2410 7800 2490
Connection ~ 7800 2490
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C29F0DE
P 3400 3260
AR Path="/5BB27BA3/5C29F0DE" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C29F0DE" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C29F0DE" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C29F0DE" Ref="R303"  Part="1" 
F 0 "R303" H 3320 3260 50  0000 R CNN
F 1 "10.5k" V 3400 3260 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3400 3260 50  0001 C CNN
F 3 "" H 3400 3260 50  0001 C CNN
F 4 "0603" H 3500 3340 50  0000 L CNN "display_footprint"
F 5 "1%" H 3500 3260 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3510 3180 50  0000 L CNN "Wattage"
F 7 "311-10.5KHRCT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    3400 3260
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C25C1EC
P 5760 5030
AR Path="/5BB27BA3/5C25C1EC" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C25C1EC" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C25C1EC" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C25C1EC" Ref="R304"  Part="1" 
F 0 "R304" H 5680 5030 50  0000 R CNN
F 1 "249k" V 5760 5030 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5760 5030 50  0001 C CNN
F 3 "" H 5760 5030 50  0001 C CNN
F 4 "0603" H 5860 5110 50  0000 L CNN "display_footprint"
F 5 "1%" H 5860 5030 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5870 4950 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT249KCT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    5760 5030
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C25C1FA
P 5760 5540
AR Path="/5BB27BA3/5C25C1FA" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C25C1FA" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C25C1FA" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C25C1FA" Ref="R305"  Part="1" 
F 0 "R305" H 5680 5540 50  0000 R CNN
F 1 "100k" V 5760 5540 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5760 5540 50  0001 C CNN
F 3 "" H 5760 5540 50  0001 C CNN
F 4 "0603" H 5860 5620 50  0000 L CNN "display_footprint"
F 5 "1%" H 5860 5540 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5870 5460 50  0000 L CNN "Wattage"
F 7 "A106046CT-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    5760 5540
	1    0    0    -1  
$EndComp
Wire Wire Line
	5760 5180 5760 5270
$Comp
L Custom_Library:74LVC1G17_Power U302
U 1 1 5C25DBB8
P 6320 5270
F 0 "U302" H 6420 5420 50  0000 L CNN
F 1 "74LVC1G17" H 6420 5120 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 6320 5270 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 6420 5420 50  0001 C CNN
F 4 "296-11934-1-ND" H 6320 5270 50  0001 C CNN "Digi-Key PN"
	1    6320 5270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5C25DC5C
P 6320 5370
F 0 "#PWR0130" H 6320 5120 50  0001 C CNN
F 1 "GND" H 6320 5220 50  0000 C CNN
F 2 "" H 6320 5370 50  0001 C CNN
F 3 "" H 6320 5370 50  0001 C CNN
	1    6320 5370
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0131
U 1 1 5C25DCB1
P 6320 5170
F 0 "#PWR0131" H 6320 5020 50  0001 C CNN
F 1 "+5V" H 6320 5310 50  0000 C CNN
F 2 "" H 6320 5170 50  0001 C CNN
F 3 "" H 6320 5170 50  0001 C CNN
	1    6320 5170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5C26675A
P 5760 5690
F 0 "#PWR0132" H 5760 5440 50  0001 C CNN
F 1 "GND" H 5760 5540 50  0000 C CNN
F 2 "" H 5760 5690 50  0001 C CNN
F 3 "" H 5760 5690 50  0001 C CNN
	1    5760 5690
	1    0    0    -1  
$EndComp
Wire Wire Line
	6020 5270 5760 5270
Connection ~ 5760 5270
Wire Wire Line
	5760 5270 5760 5390
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C268247
P 7120 5670
AR Path="/5BB27BA3/5C268247" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C268247" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C268247" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C268247" Ref="R308"  Part="1" 
F 0 "R308" H 7040 5670 50  0000 R CNN
F 1 "10k" V 7120 5670 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7120 5670 50  0001 C CNN
F 3 "" H 7120 5670 50  0001 C CNN
F 4 "0603" H 7220 5750 50  0000 L CNN "display_footprint"
F 5 "1%" H 7220 5670 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 7230 5590 50  0000 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7420 6070 60  0001 C CNN "Digi-Key PN"
	1    7120 5670
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5C2682CB
P 7120 5820
F 0 "#PWR0133" H 7120 5570 50  0001 C CNN
F 1 "GND" H 7120 5670 50  0000 C CNN
F 2 "" H 7120 5820 50  0001 C CNN
F 3 "" H 7120 5820 50  0001 C CNN
	1    7120 5820
	1    0    0    -1  
$EndComp
Wire Wire Line
	7120 5520 7120 5270
Wire Wire Line
	7120 5270 6570 5270
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C269D78
P 6080 6140
AR Path="/5C1D5CD8/5C269D78" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5C269D78" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C269D78" Ref="C304"  Part="1" 
F 0 "C304" H 6105 6240 50  0000 L CNN
F 1 "0.1uF" H 6105 6040 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6118 5990 50  0001 C CNN
F 3 "" H 6105 6240 50  0001 C CNN
F 4 "0603" H 5930 6240 50  0000 R CNN "display_footprint"
F 5 "50V" H 5930 6140 50  0000 R CNN "Voltage"
F 6 "X7R" H 5930 6040 50  0000 R CNN "Dielectric"
F 7 "311-1344-1-ND" H 6505 6640 60  0001 C CNN "Digi-Key PN"
	1    6080 6140
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C269D82
P 6400 6140
AR Path="/5C1D5CD8/5C269D82" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5C269D82" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C269D82" Ref="C305"  Part="1" 
F 0 "C305" H 6425 6240 50  0000 L CNN
F 1 "10nF" H 6425 6040 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6438 5990 50  0001 C CNN
F 3 "" H 6425 6240 50  0001 C CNN
F 4 "0603" H 6250 6240 50  0001 R CNN "display_footprint"
F 5 "50V" H 6250 6140 50  0001 R CNN "Voltage"
F 6 "X7R" H 6250 6040 50  0001 R CNN "Dielectric"
F 7 "1276-1921-1-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    6400 6140
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C269D8C
P 6720 6140
AR Path="/5C1D5CD8/5C269D8C" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5C269D8C" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C269D8C" Ref="C306"  Part="1" 
F 0 "C306" H 6745 6240 50  0000 L CNN
F 1 "1nF" H 6745 6040 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6758 5990 50  0001 C CNN
F 3 "" H 6745 6240 50  0001 C CNN
F 4 "0603" H 6570 6240 50  0001 R CNN "display_footprint"
F 5 "50V" H 6570 6140 50  0001 R CNN "Voltage"
F 6 "X7R" H 6570 6040 50  0001 R CNN "Dielectric"
F 7 "1276-1018-1-ND" H 0   0   50  0001 C CNN "Digi-Key PN"
	1    6720 6140
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C269D93
P 6400 5910
AR Path="/5C1D5CCA/5C269D93" Ref="#PWR?"  Part="1" 
AR Path="/5C1E3A08/5C269D93" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 6400 5760 50  0001 C CNN
F 1 "+5V" H 6400 6050 50  0000 C CNN
F 2 "" H 6400 5910 50  0001 C CNN
F 3 "" H 6400 5910 50  0001 C CNN
	1    6400 5910
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5910 6400 5950
Wire Wire Line
	6400 5950 6080 5950
Wire Wire Line
	6080 5950 6080 5990
Connection ~ 6400 5950
Wire Wire Line
	6400 5950 6400 5990
Wire Wire Line
	6400 5950 6720 5950
Wire Wire Line
	6720 5950 6720 5990
Wire Wire Line
	6400 6370 6400 6330
Wire Wire Line
	6400 6330 6080 6330
Wire Wire Line
	6080 6330 6080 6290
Connection ~ 6400 6330
Wire Wire Line
	6400 6330 6400 6290
Wire Wire Line
	6400 6330 6720 6330
Wire Wire Line
	6720 6330 6720 6290
$Comp
L power:GND #PWR?
U 1 1 5C269DA7
P 6400 6370
AR Path="/5C1D5CCA/5C269DA7" Ref="#PWR?"  Part="1" 
AR Path="/5C1E3A08/5C269DA7" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 6400 6120 50  0001 C CNN
F 1 "GND" H 6400 6220 50  0000 C CNN
F 2 "" H 6400 6370 50  0001 C CNN
F 3 "" H 6400 6370 50  0001 C CNN
	1    6400 6370
	1    0    0    -1  
$EndComp
Text GLabel 7200 5270 2    50   Output ~ 0
POS5_SW_SNS
Wire Wire Line
	7200 5270 7120 5270
Connection ~ 7120 5270
Wire Wire Line
	5620 2490 5760 2490
Wire Wire Line
	5760 4880 5760 2490
Connection ~ 5760 2490
Wire Wire Line
	5760 2490 5910 2490
$Comp
L Custom_Library:TPS62130 U301
U 1 1 5C2754C7
P 5120 3190
F 0 "U301" H 5120 4440 50  0000 C CNN
F 1 "TPS62130" H 5120 3190 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-16-1EP_3x3mm_Pitch0.5mm" H 5120 3190 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps62130.pdf" H 5120 3190 50  0001 C CNN
F 4 "296-37878-1-ND" H 5020 3190 50  0001 C CNN "Digi-Key PN"
	1    5120 3190
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0382
U 1 1 5C316CFE
P 8460 2410
F 0 "#PWR0382" H 8460 2260 50  0001 C CNN
F 1 "+5V" H 8460 2550 50  0000 C CNN
F 2 "" H 8460 2410 50  0001 C CNN
F 3 "" H 8460 2410 50  0001 C CNN
	1    8460 2410
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5C316D54
P 8460 2410
F 0 "#FLG0105" H 8460 2485 50  0001 C CNN
F 1 "PWR_FLAG" H 8460 2560 50  0000 C CNN
F 2 "" H 8460 2410 50  0001 C CNN
F 3 "~" H 8460 2410 50  0001 C CNN
	1    8460 2410
	-1   0    0    1   
$EndComp
$Comp
L Custom_Library:TP TP?
U 1 1 5C3650A7
P 7050 2420
AR Path="/5C1D5CD8/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5C1D5C9E/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5C1E3A08/5C3650A7" Ref="TP301"  Part="1" 
F 0 "TP301" H 7050 2570 50  0000 C CNN
F 1 "TP" H 7050 2570 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 7050 2420 60  0001 C CNN
F 3 "" H 7050 2420 60  0000 C CNN
	1    7050 2420
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2420 7050 2490
Text Notes 540  690  0    100  ~ 20
03. +5V Power Supply
$EndSCHEMATC
