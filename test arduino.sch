EESchema Schematic File Version 4
LIBS:test arduino-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "lun. 30 mars 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 9150 1450
F 0 "#PWR01" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR02" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR03" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR04" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:R R3
U 1 1 5BD74478
P 7700 3250
F 0 "R3" H 7770 3296 50  0000 L CNN
F 1 "R" H 7770 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7630 3250 50  0001 C CNN
F 3 "~" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BD7453C
P 8200 3400
F 0 "D1" H 8191 3616 50  0000 C CNN
F 1 "LED" H 8191 3525 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8200 3400 50  0001 C CNN
F 3 "~" H 8200 3400 50  0001 C CNN
	1    8200 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5BD7461E
P 8200 3000
F 0 "R1" H 8270 3046 50  0000 L CNN
F 1 "R" H 8270 2955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8130 3000 50  0001 C CNN
F 3 "~" H 8200 3000 50  0001 C CNN
	1    8200 3000
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:TSIC206-TO92 U1
U 1 1 5BD74727
P 2750 3250
F 0 "U1" H 2420 3296 50  0000 R CNN
F 1 "TSIC206-TO92" H 2420 3205 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 3400 50  0001 L CNN
F 3 "https://shop.bb-sensors.com/out/media/Datasheet_Digital_Semiconductor_temperatur_sensor_TSIC.pdf" H 2750 3250 50  0001 C CNN
	1    2750 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2700 3150 3250
Wire Wire Line
	8200 3250 8200 3150
Text Label 6200 3700 0    50   ~ 0
6(**)
Text Label 6200 3800 0    50   ~ 0
7
Text Label 6200 3900 0    50   ~ 0
8
Text Label 6200 4000 0    50   ~ 0
9(**)
Text Label 5850 2800 0    50   ~ 0
5(**)
Text Label 5850 3000 0    50   ~ 0
4
$Comp
L power:+5V #PWR0101
U 1 1 5BD8E2D7
P 6550 2600
F 0 "#PWR0101" H 6550 2450 50  0001 C CNN
F 1 "+5V" H 6565 2773 50  0000 C CNN
F 2 "" H 6550 2600 50  0001 C CNN
F 3 "" H 6550 2600 50  0001 C CNN
	1    6550 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2600 6550 2600
$Comp
L Display_Character:WC1602A DS1
U 1 1 5BD74072
P 6850 3400
F 0 "DS1" H 6850 4378 50  0000 C CNN
F 1 "WC1602A" H 6850 4287 50  0000 C CNN
F 2 "Display:WC1602A" H 6850 2500 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 7550 3400 50  0001 C CNN
	1    6850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2800 5850 2800
Wire Wire Line
	6450 3000 5850 3000
Wire Wire Line
	6450 3700 6200 3700
Wire Wire Line
	6450 3800 6200 3800
Wire Wire Line
	6450 3900 6200 3900
Wire Wire Line
	6450 4000 6200 4000
$Comp
L power:GND #PWR0102
U 1 1 5BD9D4FB
P 7300 3300
F 0 "#PWR0102" H 7300 3050 50  0001 C CNN
F 1 "GND" H 7305 3127 50  0000 C CNN
F 2 "" H 7300 3300 50  0001 C CNN
F 3 "" H 7300 3300 50  0001 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BD9F116
P 7700 3500
F 0 "#PWR0103" H 7700 3250 50  0001 C CNN
F 1 "GND" H 7705 3327 50  0000 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3400 7700 3500
Wire Wire Line
	7250 3200 7300 3200
Wire Wire Line
	7300 3200 7300 3300
Wire Wire Line
	7250 2800 7700 2800
Wire Wire Line
	7700 2800 7700 3100
$Comp
L power:+5V #PWR0104
U 1 1 5BDA895D
P 7350 3100
F 0 "#PWR0104" H 7350 2950 50  0001 C CNN
F 1 "+5V" H 7365 3273 50  0000 C CNN
F 2 "" H 7350 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0001 C CNN
	1    7350 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3100 7250 3100
NoConn ~ 8900 2700
NoConn ~ 8900 2800
NoConn ~ 10550 2900
NoConn ~ 10550 3000
Text Label 8400 3700 0    50   ~ 0
13(SCK)
Wire Wire Line
	8400 3700 8200 3700
Wire Wire Line
	8200 3550 8200 3700
NoConn ~ 10550 1400
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5BDDC0E8
P 6700 1000
F 0 "#FLG0101" H 6700 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 1174 50  0000 C CNN
F 2 "" H 6700 1000 50  0001 C CNN
F 3 "~" H 6700 1000 50  0001 C CNN
	1    6700 1000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5BDDC141
P 7150 1000
F 0 "#FLG0102" H 7150 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 7150 1174 50  0000 C CNN
F 2 "" H 7150 1000 50  0001 C CNN
F 3 "~" H 7150 1000 50  0001 C CNN
	1    7150 1000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5BDDC19A
P 7650 1000
F 0 "#FLG0103" H 7650 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 7650 1174 50  0000 C CNN
F 2 "" H 7650 1000 50  0001 C CNN
F 3 "~" H 7650 1000 50  0001 C CNN
	1    7650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5BDDC2BD
P 6700 1100
F 0 "#PWR0106" H 6700 950 50  0001 C CNN
F 1 "+5V" H 6715 1273 50  0000 C CNN
F 2 "" H 6700 1100 50  0001 C CNN
F 3 "" H 6700 1100 50  0001 C CNN
	1    6700 1100
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 5BDDC3B7
P 7150 1100
F 0 "#PWR0107" H 7150 950 50  0001 C CNN
F 1 "+3.3V" H 7165 1273 50  0000 C CNN
F 2 "" H 7150 1100 50  0001 C CNN
F 3 "" H 7150 1100 50  0001 C CNN
	1    7150 1100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5BDDC44F
P 7650 1050
F 0 "#PWR0108" H 7650 800 50  0001 C CNN
F 1 "GND" H 7655 877 50  0000 C CNN
F 2 "" H 7650 1050 50  0001 C CNN
F 3 "" H 7650 1050 50  0001 C CNN
	1    7650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1000 7150 1100
Wire Wire Line
	6700 1000 6700 1100
Wire Wire Line
	7650 1000 7650 1050
$Comp
L power:GND #PWR0109
U 1 1 5BDF2D63
P 6850 4300
F 0 "#PWR0109" H 6850 4050 50  0001 C CNN
F 1 "GND" H 6855 4127 50  0000 C CNN
F 2 "" H 6850 4300 50  0001 C CNN
F 3 "" H 6850 4300 50  0001 C CNN
	1    6850 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4200 6850 4300
NoConn ~ 8950 1450
NoConn ~ 9350 1450
Text Label 8900 2600 0    60   ~ 0
A1
$Comp
L Device:Buzzer BZ1
U 1 1 5C117556
P 5300 1800
F 0 "BZ1" H 5453 1829 50  0000 L CNN
F 1 "Buzzer" H 5453 1738 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_Kingstate_KCG0601" V 5275 1900 50  0001 C CNN
F 3 "~" V 5275 1900 50  0001 C CNN
	1    5300 1800
	1    0    0    -1  
$EndComp
Text Label 4300 3600 0    50   ~ 0
3(**)
Wire Wire Line
	4600 3600 4300 3600
Text Label 4300 3700 0    50   ~ 0
A5(SCL)
Text Label 4300 3800 0    50   ~ 0
2
Wire Wire Line
	4600 3700 4300 3700
Wire Wire Line
	4600 3800 4300 3800
$Comp
L power:GND #PWR010
U 1 1 5C12DB4E
P 5300 3900
F 0 "#PWR010" H 5300 3650 50  0001 C CNN
F 1 "GND" H 5305 3727 50  0000 C CNN
F 2 "" H 5300 3900 50  0001 C CNN
F 3 "" H 5300 3900 50  0001 C CNN
	1    5300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3800 5300 3900
Wire Wire Line
	5200 3800 5300 3800
$Comp
L power:+5V #PWR09
U 1 1 5C13401B
P 5300 3450
F 0 "#PWR09" H 5300 3300 50  0001 C CNN
F 1 "+5V" H 5315 3623 50  0000 C CNN
F 2 "" H 5300 3450 50  0001 C CNN
F 3 "" H 5300 3450 50  0001 C CNN
	1    5300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3450 5300 3600
Wire Wire Line
	5300 3600 5200 3600
$Comp
L power:GND #PWR012
U 1 1 5C14AFC5
P 5800 3500
F 0 "#PWR012" H 5800 3250 50  0001 C CNN
F 1 "GND" H 5805 3327 50  0000 C CNN
F 2 "" H 5800 3500 50  0001 C CNN
F 3 "" H 5800 3500 50  0001 C CNN
	1    5800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3300 5800 3300
Wire Wire Line
	5800 3300 5800 3400
Wire Wire Line
	6450 3400 6050 3400
Connection ~ 5800 3400
Wire Wire Line
	5800 3400 5800 3500
Wire Wire Line
	6450 3500 6250 3500
Wire Wire Line
	6050 3500 6050 3400
Connection ~ 6050 3400
Wire Wire Line
	6050 3400 5800 3400
Wire Wire Line
	6450 3600 6250 3600
Wire Wire Line
	6250 3600 6250 3500
Connection ~ 6250 3500
Wire Wire Line
	6250 3500 6050 3500
$Comp
L power:GND #PWR011
U 1 1 5C160B8F
P 5600 2900
F 0 "#PWR011" H 5600 2650 50  0001 C CNN
F 1 "GND" H 5605 2727 50  0000 C CNN
F 2 "" H 5600 2900 50  0001 C CNN
F 3 "" H 5600 2900 50  0001 C CNN
	1    5600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2900 5600 2900
Wire Notes Line
	8500 500  8500 3450
$Comp
L power:GND #PWR013
U 1 1 5C19548D
P 8200 2750
F 0 "#PWR013" H 8200 2500 50  0001 C CNN
F 1 "GND" H 8205 2577 50  0000 C CNN
F 2 "" H 8200 2750 50  0001 C CNN
F 3 "" H 8200 2750 50  0001 C CNN
	1    8200 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 2850 8200 2750
Wire Wire Line
	9300 2200 9300 3150
$Comp
L power:GND #PWR06
U 1 1 5C1B4627
P 2750 5100
F 0 "#PWR06" H 2750 4850 50  0001 C CNN
F 1 "GND" H 2755 4927 50  0000 C CNN
F 2 "" H 2750 5100 50  0001 C CNN
F 3 "" H 2750 5100 50  0001 C CNN
	1    2750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3550 2750 5100
$Comp
L power:+5V #PWR05
U 1 1 5C1B7A6D
P 2750 2850
F 0 "#PWR05" H 2750 2700 50  0001 C CNN
F 1 "+5V" H 2765 3023 50  0000 C CNN
F 2 "" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2950 2750 2850
Text Label 3150 2700 0    50   ~ 0
A0
Wire Wire Line
	9400 2500 8900 2500
NoConn ~ 8900 2600
Text Label 5000 1700 0    50   ~ 0
12(MISO)
Wire Wire Line
	5000 1700 5200 1700
$Comp
L power:GND #PWR07
U 1 1 5C1D7A30
P 5200 2200
F 0 "#PWR07" H 5200 1950 50  0001 C CNN
F 1 "GND" H 5205 2027 50  0000 C CNN
F 2 "" H 5200 2200 50  0001 C CNN
F 3 "" H 5200 2200 50  0001 C CNN
	1    5200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2200 5200 1900
$Comp
L Device:Encoder_KY-040 SW1
U 1 1 5C17C856
P 4900 3700
F 0 "SW1" H 4900 4067 50  0000 C CNN
F 1 "Encoder_KY-040" H 4900 3976 50  0000 C CNN
F 2 "Rotary_Encoder:KY-040" H 4750 3860 50  0001 C CNN
F 3 "~" H 4900 3960 50  0001 C CNN
	1    4900 3700
	1    0    0    -1  
$EndComp
NoConn ~ 10550 1900
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5C1CE4A5
P 4200 2750
F 0 "J1" H 4227 2776 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4227 2685 50  0000 L CNN
F 2 "Connector:Relais" H 4200 2750 50  0001 C CNN
F 3 "~" H 4200 2750 50  0001 C CNN
	1    4200 2750
	1    0    0    -1  
$EndComp
Text Label 3700 2550 0    50   ~ 0
11(**/MOSI)
$Comp
L power:GND #PWR0105
U 1 1 5C1D0DAC
P 3750 3050
F 0 "#PWR0105" H 3750 2800 50  0001 C CNN
F 1 "GND" H 3755 2877 50  0000 C CNN
F 2 "" H 3750 3050 50  0001 C CNN
F 3 "" H 3750 3050 50  0001 C CNN
	1    3750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3050 3750 2750
$Comp
L power:+5V #PWR0110
U 1 1 5C1D83D5
P 3900 3000
F 0 "#PWR0110" H 3900 2850 50  0001 C CNN
F 1 "+5V" H 3915 3173 50  0000 C CNN
F 2 "" H 3900 3000 50  0001 C CNN
F 3 "" H 3900 3000 50  0001 C CNN
	1    3900 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 3000 3900 2850
Wire Wire Line
	4000 2750 3750 2750
Wire Wire Line
	4000 2850 3900 2850
Wire Wire Line
	4000 2650 3700 2650
Wire Wire Line
	3700 2650 3700 2550
$EndSCHEMATC
