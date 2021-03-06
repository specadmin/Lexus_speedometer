EESchema Schematic File Version 4
LIBS:lexus-speedometer.Rev.2-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L lexus-speedometer-rescue:ATmega88-Atmel U1
U 1 1 5E78E732
P 6350 3350
F 0 "U1" H 6250 3400 50  0000 L CNN
F 1 "ATmega88" H 6100 3300 50  0000 L CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 6350 3250 50  0001 C CNN
F 3 "" H 6350 3250 50  0001 C CNN
	1    6350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4350 6550 4600
$Comp
L power:GND #PWR04
U 1 1 5E79923A
P 8250 3150
F 0 "#PWR04" H 8250 2900 50  0001 C CNN
F 1 "GND" V 8255 3022 50  0001 R CNN
F 2 "" H 8250 3150 50  0001 C CNN
F 3 "" H 8250 3150 50  0001 C CNN
	1    8250 3150
	0    -1   -1   0   
$EndComp
Text GLabel 6250 2350 1    50   Input ~ 0
RST
Wire Wire Line
	6250 2350 6250 2450
Text GLabel 8200 3450 2    50   Input ~ 0
+5V
$Comp
L Device:C C2
U 1 1 5E7B582A
P 7650 3300
F 0 "C2" H 7700 2950 50  0000 R CNN
F 1 "0.1" H 7700 3050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7688 3150 50  0001 C CNN
F 3 "~" H 7650 3300 50  0001 C CNN
F 4 "0603" H 7650 3300 50  0001 C CNN "Package"
	1    7650 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7650 3150 7450 3150
Wire Wire Line
	7450 3150 7450 3350
Wire Wire Line
	7250 3350 7450 3350
Wire Wire Line
	8250 3150 7950 3150
Connection ~ 7650 3150
Wire Wire Line
	7650 3450 7250 3450
Wire Wire Line
	5950 2100 5950 2450
$Comp
L power:GND #PWR01
U 1 1 5E81A21D
P 3700 2500
F 0 "#PWR01" H 3700 2250 50  0001 C CNN
F 1 "GND" V 3705 2372 50  0001 R CNN
F 2 "" H 3700 2500 50  0001 C CNN
F 3 "" H 3700 2500 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
NoConn ~ 7250 3150
NoConn ~ 7250 3250
NoConn ~ 6450 4350
NoConn ~ 6350 4350
NoConn ~ 6250 4350
NoConn ~ 6150 4350
NoConn ~ 5350 3150
NoConn ~ 6050 2450
NoConn ~ 6150 2450
NoConn ~ 6350 2450
NoConn ~ 6450 2450
NoConn ~ 6550 2450
NoConn ~ 6650 2450
$Comp
L Connector_Generic:Conn_01x04 X3
U 1 1 5E96E688
P 3550 4700
F 0 "X3" H 3550 4300 50  0000 C CNN
F 1 "SPEED" H 3550 4400 50  0000 C CNN
F 2 "lexus-speedometer:toyota_potentiometer" H 3550 4700 50  0001 C CNN
F 3 "~" H 3550 4700 50  0001 C CNN
	1    3550 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 4500 6050 4500
Wire Wire Line
	4450 4700 4450 3050
Wire Wire Line
	4450 3050 5350 3050
Wire Wire Line
	5950 4600 3750 4600
$Comp
L power:GND #PWR06
U 1 1 5E79B2DD
P 5100 4150
F 0 "#PWR06" H 5100 3900 50  0001 C CNN
F 1 "GND" V 5105 4022 50  0001 R CNN
F 2 "" H 5100 4150 50  0001 C CNN
F 3 "" H 5100 4150 50  0001 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4150 5100 4100
Wire Wire Line
	4900 3900 4950 3900
Wire Wire Line
	4900 3650 4900 3900
Wire Wire Line
	5300 3900 5250 3900
Wire Wire Line
	5300 3750 5300 3900
Wire Wire Line
	5350 3650 4900 3650
Wire Wire Line
	5300 3750 5350 3750
$Comp
L Device:C C4
U 1 1 5E7A886D
P 4950 3400
F 0 "C4" H 5000 3150 50  0000 L CNN
F 1 "10u" H 4800 3150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4988 3250 50  0001 C CNN
F 3 "~" H 4950 3400 50  0001 C CNN
F 4 "0603" H 4950 3400 50  0001 C CNN "Package"
	1    4950 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 3550 5150 3550
Wire Wire Line
	4950 3250 5250 3250
Wire Wire Line
	5250 3450 5250 3250
Wire Wire Line
	5250 3450 5350 3450
Connection ~ 5250 3250
Wire Wire Line
	5250 3250 5350 3250
Wire Wire Line
	5350 3350 5150 3350
Wire Wire Line
	5150 3350 5150 3550
Connection ~ 5150 3550
Wire Wire Line
	5150 3550 5350 3550
Text GLabel 4800 3550 0    50   Input ~ 0
+5V
Wire Wire Line
	4800 3550 4950 3550
Connection ~ 4950 3550
$Comp
L power:GND #PWR05
U 1 1 5E9E615B
P 4800 3250
F 0 "#PWR05" H 4800 3000 50  0001 C CNN
F 1 "GND" V 4805 3122 50  0001 R CNN
F 2 "" H 4800 3250 50  0001 C CNN
F 3 "" H 4800 3250 50  0001 C CNN
	1    4800 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3250 4950 3250
Connection ~ 4950 3250
$Comp
L Device:C C3
U 1 1 5EA4C7C6
P 7950 3300
F 0 "C3" H 8000 2950 50  0000 R CNN
F 1 "0.1" H 8000 3050 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7988 3150 50  0001 C CNN
F 3 "~" H 7950 3300 50  0001 C CNN
F 4 "0603" H 7950 3300 50  0001 C CNN "Package"
	1    7950 3300
	-1   0    0    1   
$EndComp
Connection ~ 7950 3150
Wire Wire Line
	7950 3150 7650 3150
Wire Wire Line
	8200 3450 7950 3450
Wire Wire Line
	7950 3450 7950 3650
Wire Wire Line
	7250 3650 7950 3650
Connection ~ 7950 3450
NoConn ~ 7250 3550
Wire Wire Line
	7250 3750 7500 3750
Wire Wire Line
	6650 4350 6650 4700
Wire Wire Line
	4450 4700 3750 4700
Text Label 3800 4700 0    50   ~ 0
SIN-
Text Label 3800 4500 0    50   ~ 0
COS-
$Comp
L Device:Q_NPN_BEC Q1
U 1 1 5E7C311C
P 4800 2400
F 0 "Q1" H 4990 2446 50  0000 L CNN
F 1 "2SC2412" H 4990 2355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 2500 50  0001 C CNN
F 3 "~" H 4800 2400 50  0001 C CNN
	1    4800 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E7C8C7C
P 4900 2650
F 0 "#PWR02" H 4900 2400 50  0001 C CNN
F 1 "GND" V 4905 2522 50  0001 R CNN
F 2 "" H 4900 2650 50  0001 C CNN
F 3 "" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2650 4900 2600
Wire Wire Line
	4900 2200 4900 2100
Wire Wire Line
	4900 2100 5950 2100
Connection ~ 4900 2100
$Comp
L Device:R R2
U 1 1 5E7E2A8A
P 4150 2400
F 0 "R2" V 3943 2400 50  0000 C CNN
F 1 "10k" V 4034 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4080 2400 50  0001 C CNN
F 3 "~" H 4150 2400 50  0001 C CNN
F 4 "0805" V 4150 2400 50  0001 C CNN "Package"
	1    4150 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 2400 4600 2400
Text Label 7550 4700 0    50   ~ 0
MISO
Text Label 7550 4600 0    50   ~ 0
MOSI
Text Label 7550 4800 0    50   ~ 0
SCK
$Comp
L Device:C C1
U 1 1 5EF08DCC
P 4500 2550
F 0 "C1" H 4450 2200 50  0000 L CNN
F 1 "0.1" H 4450 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4538 2400 50  0001 C CNN
F 3 "~" H 4500 2550 50  0001 C CNN
F 4 "0603" H 4500 2550 50  0001 C CNN "Package"
	1    4500 2550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5EF091CF
P 4500 2700
F 0 "#PWR03" H 4500 2450 50  0001 C CNN
F 1 "GND" V 4505 2572 50  0001 R CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2400 4500 2400
Connection ~ 4500 2400
$Comp
L Connector_Generic:Conn_01x03 X1
U 1 1 5FB8E671
P 3400 2300
F 0 "X1" H 3600 2350 50  0000 C CNN
F 1 "PNL" H 3600 2250 50  0000 C CNN
F 2 "Connector_JST:JST_PH_S3B-PH-SM4-TB_1x03-1MP_P2.00mm_Horizontal" H 3400 2300 50  0001 C CNN
F 3 "~" H 3400 2300 50  0001 C CNN
	1    3400 2300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 X2
U 1 1 5FB8FEAF
P 8100 4700
F 0 "X2" H 8180 4692 50  0000 L CNN
F 1 "SPI" H 8180 4601 50  0000 L CNN
F 2 "JST_PH_S6B-PH-SM4-TB_1x06-1MP_P2.00mm_Horizontal" H 8100 4700 50  0001 C CNN
F 3 "~" H 8100 4700 50  0001 C CNN
	1    8100 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5FB94E1B
P 7900 4500
F 0 "#PWR07" H 7900 4250 50  0001 C CNN
F 1 "GND" V 7905 4372 50  0001 R CNN
F 2 "" H 7900 4500 50  0001 C CNN
F 3 "" H 7900 4500 50  0001 C CNN
	1    7900 4500
	0    1    1    0   
$EndComp
Text GLabel 7650 4900 0    50   Input ~ 0
+5V
Text GLabel 7900 5000 0    50   Input ~ 0
RST
Wire Wire Line
	7650 4900 7900 4900
Wire Wire Line
	7500 3750 7500 4800
Wire Wire Line
	6650 4700 7900 4700
Wire Wire Line
	6550 4600 7900 4600
Wire Wire Line
	7500 4800 7900 4800
Text GLabel 4900 1600 1    50   Input ~ 0
+5V
Wire Wire Line
	4900 1600 4900 1700
Wire Wire Line
	4900 2100 4900 2000
$Comp
L Device:R R1
U 1 1 5E7D758D
P 4900 1850
F 0 "R1" H 4970 1896 50  0000 L CNN
F 1 "1k" H 4970 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4830 1850 50  0001 C CNN
F 3 "~" H 4900 1850 50  0001 C CNN
F 4 "0805" H 4900 1850 50  0001 C CNN "Package"
	1    4900 1850
	1    0    0    -1  
$EndComp
Text GLabel 3600 2200 2    50   Input ~ 0
+5V
$Comp
L Mechanical:MountingHole H1
U 1 1 5FBAB4B5
P 9250 1700
F 0 "H1" H 9350 1746 50  0000 L CNN
F 1 "D3.2" H 9350 1655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 9250 1700 50  0001 C CNN
F 3 "~" H 9250 1700 50  0001 C CNN
	1    9250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND2 ZQ1
U 1 1 5FBB700B
P 5100 3900
F 0 "ZQ1" H 4750 3950 50  0000 C CNN
F 1 "16MHz" H 4750 3850 50  0000 C CNN
F 2 "Crystal:Resonator_SMD_Murata_CSTxExxV-3Pin_3.2x1.3mm" H 5100 3900 50  0001 C CNN
F 3 "~" H 5100 3900 50  0001 C CNN
F 4 "16M" H 5100 3900 50  0001 C CNN "Value"
	1    5100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2400 4000 2400
Wire Wire Line
	3600 2300 3700 2300
Wire Wire Line
	3700 2300 3700 2500
Text Label 3800 4600 0    50   ~ 0
COS+
Text Label 3800 4800 0    50   ~ 0
SIN+
Wire Wire Line
	6550 4800 6550 4600
Wire Wire Line
	3750 4800 6550 4800
Connection ~ 6550 4600
Wire Wire Line
	5950 4350 5950 4600
Wire Wire Line
	6050 4500 6050 4350
Text GLabel 7250 3050 2    50   Input ~ 0
RST
$EndSCHEMATC
