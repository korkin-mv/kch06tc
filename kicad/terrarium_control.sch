EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Microchip_ATmega:ATmega88PA-AU U1
U 1 1 5FBD60A4
P 1650 2750
F 0 "U1" H 2150 1150 50  0000 C CNN
F 1 "ATmega88PA-AU" H 2200 1050 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 1650 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48PA_88PA_168PA-Data-Sheet-40002011A.pdf" H 1650 2750 50  0001 C CNN
	1    1650 2750
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS1307Z+ U3
U 1 1 5FBD73C0
P 4550 1750
F 0 "U3" H 4900 1300 50  0000 L CNN
F 1 "DS1307Z+" H 4900 1200 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4550 1250 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5FBDEBBA
P 1650 4550
F 0 "#PWR010" H 1650 4300 50  0001 C CNN
F 1 "GND" H 1655 4377 50  0000 C CNN
F 2 "" H 1650 4550 50  0001 C CNN
F 3 "" H 1650 4550 50  0001 C CNN
	1    1650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4250 1650 4550
$Comp
L power:+5V #PWR09
U 1 1 5FBDF449
P 1650 800
F 0 "#PWR09" H 1650 650 50  0001 C CNN
F 1 "+5V" H 1665 973 50  0000 C CNN
F 2 "" H 1650 800 50  0001 C CNN
F 3 "" H 1650 800 50  0001 C CNN
	1    1650 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1550 1050 1200
$Comp
L power:GND #PWR030
U 1 1 5FBE0C45
P 4550 2250
F 0 "#PWR030" H 4550 2000 50  0001 C CNN
F 1 "GND" H 4555 2077 50  0000 C CNN
F 2 "" H 4550 2250 50  0001 C CNN
F 3 "" H 4550 2250 50  0001 C CNN
	1    4550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2250 4550 2150
$Comp
L power:+5V #PWR029
U 1 1 5FBE1613
P 4450 700
F 0 "#PWR029" H 4450 550 50  0001 C CNN
F 1 "+5V" H 4465 873 50  0000 C CNN
F 2 "" H 4450 700 50  0001 C CNN
F 3 "" H 4450 700 50  0001 C CNN
	1    4450 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR031
U 1 1 5FBE1C8E
P 4700 1050
F 0 "#PWR031" H 4700 900 50  0001 C CNN
F 1 "+BATT" H 4715 1223 50  0000 C CNN
F 2 "" H 4700 1050 50  0001 C CNN
F 3 "" H 4700 1050 50  0001 C CNN
	1    4700 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 5FBE4344
P 3850 1900
F 0 "Y1" V 4000 1750 50  0000 L CNN
F 1 "32768Hz" V 4100 1650 50  0000 L CNN
F 2 "terrarium_control:FC-135" H 3850 1900 50  0001 C CNN
F 3 "~" H 3850 1900 50  0001 C CNN
	1    3850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1850 4050 1800
Wire Wire Line
	4050 1800 3850 1800
Wire Wire Line
	4050 1950 4050 2000
Wire Wire Line
	4050 2000 3850 2000
Text GLabel 2350 3050 2    50   Input ~ 0
RESET
Wire Wire Line
	2250 3050 2350 3050
Text GLabel 2350 1950 2    50   Output ~ 0
MISO
Text GLabel 2350 1850 2    50   Input ~ 0
MOSI
Text GLabel 2350 2050 2    50   Input ~ 0
SCK
Wire Wire Line
	2250 1850 2350 1850
Wire Wire Line
	2250 1950 2350 1950
Wire Wire Line
	2250 2050 2350 2050
Text GLabel 2350 2850 2    50   BiDi ~ 0
SDA
Text GLabel 2350 2950 2    50   Output ~ 0
SCL
Wire Wire Line
	2250 2850 2350 2850
Wire Wire Line
	2250 2950 2350 2950
Text GLabel 2350 3250 2    50   Input ~ 0
MCU_RXD
Text GLabel 2350 3350 2    50   Output ~ 0
MCU_TXD
Wire Wire Line
	2250 3250 2350 3250
Wire Wire Line
	2250 3350 2350 3350
Text GLabel 2350 3450 2    50   Input ~ 0
SQW
Wire Wire Line
	2250 3450 2350 3450
Text GLabel 3950 1650 0    50   BiDi ~ 0
SDA
Text GLabel 3950 1550 0    50   Input ~ 0
SCL
Text GLabel 5150 1750 2    50   Output ~ 0
SQW
Wire Wire Line
	3950 1550 4050 1550
Wire Wire Line
	3950 1650 4050 1650
Wire Wire Line
	5050 1750 5150 1750
Text GLabel 2350 2450 2    50   Output ~ 0
DAC0
Text GLabel 2350 2550 2    50   Output ~ 0
DAC1
Text GLabel 2350 2650 2    50   Output ~ 0
DAC2
Text GLabel 2350 2750 2    50   Output ~ 0
DAC3
Wire Wire Line
	2250 2450 2350 2450
Wire Wire Line
	2250 2550 2350 2550
Wire Wire Line
	2250 2650 2350 2650
Wire Wire Line
	2250 2750 2350 2750
Text GLabel 2350 2150 2    50   Output ~ 0
RELAY0
Text GLabel 2350 2250 2    50   Output ~ 0
RELAY1
Wire Wire Line
	2250 2150 2350 2150
Wire Wire Line
	2250 2250 2350 2250
Text GLabel 2350 1650 2    50   BiDi ~ 0
ONE_WIRE
Wire Wire Line
	2250 1650 2350 1650
NoConn ~ 2250 1750
NoConn ~ 2250 1550
NoConn ~ 1050 1750
NoConn ~ 1050 1850
$Comp
L Device:R_Pack04 RN1
U 1 1 5FC0F45F
P 3550 3100
F 0 "RN1" V 3133 3100 50  0000 C CNN
F 1 "4.7k" V 3224 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Concave_4x0603" V 3825 3100 50  0001 C CNN
F 3 "~" H 3550 3100 50  0001 C CNN
	1    3550 3100
	0    1    1    0   
$EndComp
Text GLabel 3250 2900 0    50   Input ~ 0
DAC3
Text GLabel 3250 3000 0    50   Input ~ 0
DAC2
Text GLabel 3250 3100 0    50   Input ~ 0
DAC1
Text GLabel 3250 3200 0    50   Input ~ 0
DAC0
Wire Wire Line
	3250 2900 3350 2900
Wire Wire Line
	3250 3000 3350 3000
Wire Wire Line
	3250 3100 3350 3100
Wire Wire Line
	3250 3200 3350 3200
$Comp
L Device:R_Small R9
U 1 1 5FC192AD
P 4200 3650
F 0 "R9" H 4259 3696 50  0000 L CNN
F 1 "4.7k" H 4259 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 4200 3650 50  0001 C CNN
F 3 "~" H 4200 3650 50  0001 C CNN
	1    4200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3550 4200 3500
Wire Wire Line
	3750 2900 3750 2600
Wire Wire Line
	3750 2600 4200 2600
$Comp
L power:GND #PWR024
U 1 1 5FC25326
P 4200 3850
F 0 "#PWR024" H 4200 3600 50  0001 C CNN
F 1 "GND" H 4205 3677 50  0000 C CNN
F 2 "" H 4200 3850 50  0001 C CNN
F 3 "" H 4200 3850 50  0001 C CNN
	1    4200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3850 4200 3750
Text GLabel 4200 2500 1    50   Output ~ 0
DAC
Wire Wire Line
	4200 2600 4200 2500
$Comp
L Amplifier_Operational:LM358 U2
U 1 1 5FC27980
P 6250 2350
F 0 "U2" H 6250 2717 50  0000 C CNN
F 1 "LM358" H 6250 2626 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 6250 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6250 2350 50  0001 C CNN
	1    6250 2350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U2
U 2 1 5FC2FCB1
P 6250 1750
F 0 "U2" H 6250 2117 50  0000 C CNN
F 1 "LM358" H 6250 2026 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 6250 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6250 1750 50  0001 C CNN
	2    6250 1750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U2
U 3 1 5FC31DB5
P 1700 5650
F 0 "U2" H 1658 5696 50  0000 L CNN
F 1 "LM358" H 1658 5605 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 1700 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 1700 5650 50  0001 C CNN
	3    1700 5650
	1    0    0    -1  
$EndComp
Text GLabel 5850 2250 0    50   Input ~ 0
DAC
Wire Wire Line
	5850 2250 5950 2250
$Comp
L power:GND #PWR035
U 1 1 5FC3B8A1
P 5950 3050
F 0 "#PWR035" H 5950 2800 50  0001 C CNN
F 1 "GND" H 5955 2877 50  0000 C CNN
F 2 "" H 5950 3050 50  0001 C CNN
F 3 "" H 5950 3050 50  0001 C CNN
	1    5950 3050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 5FC42127
P 6850 2350
F 0 "Q2" H 7041 2396 50  0000 L CNN
F 1 "BC817" H 7041 2305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7050 2275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC818-D.pdf" H 6850 2350 50  0001 L CNN
	1    6850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR07
U 1 1 5FC4419B
P 1600 5250
F 0 "#PWR07" H 1600 5100 50  0001 C CNN
F 1 "+12V" H 1615 5423 50  0000 C CNN
F 2 "" H 1600 5250 50  0001 C CNN
F 3 "" H 1600 5250 50  0001 C CNN
	1    1600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5350 1600 5250
$Comp
L power:GND #PWR08
U 1 1 5FC45E23
P 1600 6050
F 0 "#PWR08" H 1600 5800 50  0001 C CNN
F 1 "GND" H 1605 5877 50  0000 C CNN
F 2 "" H 1600 6050 50  0001 C CNN
F 3 "" H 1600 6050 50  0001 C CNN
	1    1600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6050 1600 5950
$Comp
L power:+12V #PWR038
U 1 1 5FC483F5
P 6950 2050
F 0 "#PWR038" H 6950 1900 50  0001 C CNN
F 1 "+12V" H 6965 2223 50  0000 C CNN
F 2 "" H 6950 2050 50  0001 C CNN
F 3 "" H 6950 2050 50  0001 C CNN
	1    6950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2150 6950 2050
$Comp
L Device:R_Small R10
U 1 1 5FC5260A
P 5950 2850
F 0 "R10" H 6009 2896 50  0000 L CNN
F 1 "33k" H 6009 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 5950 2850 50  0001 C CNN
F 3 "~" H 5950 2850 50  0001 C CNN
	1    5950 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5FC54126
P 6500 2650
F 0 "R13" V 6696 2650 50  0000 C CNN
F 1 "51k" V 6605 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6500 2650 50  0001 C CNN
F 3 "~" H 6500 2650 50  0001 C CNN
	1    6500 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 2550 6950 2650
Wire Wire Line
	6550 2350 6650 2350
Text GLabel 7050 2650 2    50   Output ~ 0
FUN
Wire Wire Line
	6950 2650 7050 2650
Connection ~ 6950 2650
Wire Wire Line
	5950 2450 5950 2650
Wire Wire Line
	5950 2650 6400 2650
Wire Wire Line
	6600 2650 6950 2650
Wire Wire Line
	5950 3050 5950 2950
Wire Wire Line
	5950 2750 5950 2650
Connection ~ 5950 2650
NoConn ~ 5950 1650
NoConn ~ 5950 1850
NoConn ~ 6550 1750
$Comp
L power:+5V #PWR020
U 1 1 5FBFF511
P 2700 5650
F 0 "#PWR020" H 2700 5500 50  0001 C CNN
F 1 "+5V" V 2715 5778 50  0000 L CNN
F 2 "" H 2700 5650 50  0001 C CNN
F 3 "" H 2700 5650 50  0001 C CNN
	1    2700 5650
	0    -1   -1   0   
$EndComp
Text GLabel 3100 5650 2    50   UnSpc ~ 0
RESET
Wire Wire Line
	2700 5650 2800 5650
Wire Wire Line
	3000 5650 3100 5650
$Comp
L Device:R_Small R3
U 1 1 5FBFF52A
P 2900 5650
F 0 "R3" V 2704 5650 50  0000 C CNN
F 1 "4.7k" V 2795 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2900 5650 50  0001 C CNN
F 3 "~" H 2900 5650 50  0001 C CNN
	1    2900 5650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5FC01398
P 2700 5950
F 0 "#PWR021" H 2700 5800 50  0001 C CNN
F 1 "+5V" V 2715 6078 50  0000 L CNN
F 2 "" H 2700 5950 50  0001 C CNN
F 3 "" H 2700 5950 50  0001 C CNN
	1    2700 5950
	0    -1   -1   0   
$EndComp
Text GLabel 3100 5950 2    50   UnSpc ~ 0
ONE_WIRE
Wire Wire Line
	2700 5950 2800 5950
Wire Wire Line
	3000 5950 3100 5950
$Comp
L Device:R_Small R4
U 1 1 5FC013B1
P 2900 5950
F 0 "R4" V 2704 5950 50  0000 C CNN
F 1 "4.7k" V 2795 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2900 5950 50  0001 C CNN
F 3 "~" H 2900 5950 50  0001 C CNN
	1    2900 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5FC0402F
P 2900 6250
F 0 "R5" V 2704 6250 50  0000 C CNN
F 1 "4.7k" V 2795 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2900 6250 50  0001 C CNN
F 3 "~" H 2900 6250 50  0001 C CNN
	1    2900 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 6250 3100 6250
Wire Wire Line
	2700 6250 2800 6250
Text GLabel 3100 6250 2    50   UnSpc ~ 0
SQW
$Comp
L power:+5V #PWR022
U 1 1 5FC04016
P 2700 6250
F 0 "#PWR022" H 2700 6100 50  0001 C CNN
F 1 "+5V" V 2715 6378 50  0000 L CNN
F 2 "" H 2700 6250 50  0001 C CNN
F 3 "" H 2700 6250 50  0001 C CNN
	1    2700 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5FBFC664
P 2900 5350
F 0 "R2" V 2704 5350 50  0000 C CNN
F 1 "4.7k" V 2795 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2900 5350 50  0001 C CNN
F 3 "~" H 2900 5350 50  0001 C CNN
	1    2900 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5350 3100 5350
Wire Wire Line
	2700 5350 2800 5350
Text GLabel 3100 5350 2    50   UnSpc ~ 0
SDA
$Comp
L power:+5V #PWR019
U 1 1 5FBFC64B
P 2700 5350
F 0 "#PWR019" H 2700 5200 50  0001 C CNN
F 1 "+5V" V 2715 5478 50  0000 L CNN
F 2 "" H 2700 5350 50  0001 C CNN
F 3 "" H 2700 5350 50  0001 C CNN
	1    2700 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5FBEF015
P 2900 5050
F 0 "R1" V 2704 5050 50  0000 C CNN
F 1 "4.7k" V 2795 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 2900 5050 50  0001 C CNN
F 3 "~" H 2900 5050 50  0001 C CNN
	1    2900 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 5050 3100 5050
Wire Wire Line
	2700 5050 2800 5050
Text GLabel 3100 5050 2    50   UnSpc ~ 0
SCL
$Comp
L power:+5V #PWR018
U 1 1 5FBEFA24
P 2700 5050
F 0 "#PWR018" H 2700 4900 50  0001 C CNN
F 1 "+5V" V 2715 5178 50  0000 L CNN
F 2 "" H 2700 5050 50  0001 C CNN
F 3 "" H 2700 5050 50  0001 C CNN
	1    2700 5050
	0    -1   -1   0   
$EndComp
Text GLabel 2350 3750 2    50   Input ~ 0
ENABLE
Text GLabel 2350 3850 2    50   Input ~ 0
FORCE0
Text GLabel 2350 3950 2    50   Input ~ 0
FORCE1
Wire Wire Line
	2250 3750 2350 3750
Wire Wire Line
	2250 3850 2350 3850
Wire Wire Line
	2250 3950 2350 3950
NoConn ~ 2250 3550
NoConn ~ 2250 3650
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J4
U 1 1 5FC02A64
P 4600 5100
F 0 "J4" H 4650 5417 50  0000 C CNN
F 1 "SWITCHERS" H 4650 5326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4600 5100 50  0001 C CNN
F 3 "~" H 4600 5100 50  0001 C CNN
	1    4600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5000 4900 5100
Connection ~ 4900 5100
Wire Wire Line
	4900 5100 4900 5200
$Comp
L power:GND #PWR032
U 1 1 5FC0769C
P 5000 5100
F 0 "#PWR032" H 5000 4850 50  0001 C CNN
F 1 "GND" H 5005 4927 50  0000 C CNN
F 2 "" H 5000 5100 50  0001 C CNN
F 3 "" H 5000 5100 50  0001 C CNN
	1    5000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5100 5000 5100
Text GLabel 4300 5000 0    50   Output ~ 0
ENABLE
Text GLabel 4300 5100 0    50   Output ~ 0
FORCE0
Text GLabel 4300 5200 0    50   Output ~ 0
FORCE1
Wire Wire Line
	4300 5000 4400 5000
Wire Wire Line
	4300 5100 4400 5100
Wire Wire Line
	4300 5200 4400 5200
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5FC03305
P 4650 5450
F 0 "J6" H 4730 5442 50  0000 L CNN
F 1 "FUN" H 4730 5351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4650 5450 50  0001 C CNN
F 3 "~" H 4650 5450 50  0001 C CNN
	1    4650 5450
	1    0    0    -1  
$EndComp
Text GLabel 4350 5450 0    50   Input ~ 0
FUN
Wire Wire Line
	4350 5450 4450 5450
$Comp
L power:GND #PWR025
U 1 1 5FC0613D
P 4350 5550
F 0 "#PWR025" H 4350 5300 50  0001 C CNN
F 1 "GND" V 4355 5422 50  0000 R CNN
F 2 "" H 4350 5550 50  0001 C CNN
F 3 "" H 4350 5550 50  0001 C CNN
	1    4350 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 5550 4450 5550
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 5FC222E7
P 6700 4900
F 0 "Q1" H 6904 4946 50  0000 L CNN
F 1 "2N7002" H 6904 4855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6900 4825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 6700 4900 50  0001 L CNN
	1    6700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4600 6800 4650
$Comp
L power:GND #PWR037
U 1 1 5FC27415
P 6800 5300
F 0 "#PWR037" H 6800 5050 50  0001 C CNN
F 1 "GND" H 6805 5127 50  0000 C CNN
F 2 "" H 6800 5300 50  0001 C CNN
F 3 "" H 6800 5300 50  0001 C CNN
	1    6800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5FC2B8FF
P 6450 5100
F 0 "R12" H 6391 5054 50  0000 R CNN
F 1 "9.1k" H 6391 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6450 5100 50  0001 C CNN
F 3 "~" H 6450 5100 50  0001 C CNN
	1    6450 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5FC39C25
P 6300 4900
F 0 "R11" V 6496 4900 50  0000 C CNN
F 1 "910" V 6405 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6300 4900 50  0001 C CNN
F 3 "~" H 6300 4900 50  0001 C CNN
	1    6300 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 4900 6450 4900
Wire Wire Line
	6450 5000 6450 4900
Connection ~ 6450 4900
Wire Wire Line
	6450 4900 6500 4900
Text GLabel 6100 4900 0    50   Input ~ 0
RELAY0
Wire Wire Line
	6100 4900 6200 4900
Wire Wire Line
	6800 3900 6800 3950
Text GLabel 7300 4700 2    50   Input ~ 0
220V_PHASE
Wire Wire Line
	7300 4700 7200 4700
Wire Wire Line
	7200 4700 7200 4600
$Comp
L power:+5V #PWR036
U 1 1 5FC4DB96
P 6800 3900
F 0 "#PWR036" H 6800 3750 50  0001 C CNN
F 1 "+5V" H 6815 4073 50  0000 C CNN
F 2 "" H 6800 3900 50  0001 C CNN
F 3 "" H 6800 3900 50  0001 C CNN
	1    6800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5100 6800 5250
Wire Wire Line
	6450 5200 6450 5250
Wire Wire Line
	6450 5250 6800 5250
Connection ~ 6800 5250
Wire Wire Line
	6800 5250 6800 5300
$Comp
L terrarium_control:NRP-10-C-05D K1
U 1 1 5FC2884D
P 6950 4250
F 0 "K1" H 7430 4246 50  0000 L CNN
F 1 "NRP-10-C-05D" H 7430 4155 50  0000 L CNN
F 2 "terrarium_control:NRP-10-C" H 7750 4250 50  0001 C CNN
F 3 "" H 7750 4250 50  0001 C CNN
	1    6950 4250
	1    0    0    -1  
$EndComp
$Comp
L terrarium_control:M5 D1
U 1 1 5FC2A53A
P 6350 4300
F 0 "D1" V 6304 4380 50  0000 L CNN
F 1 "M5" V 6395 4380 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 6350 4300 50  0001 C CNN
F 3 "" H 6350 4300 50  0001 C CNN
	1    6350 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 4150 6350 3950
Wire Wire Line
	6350 3950 6800 3950
Connection ~ 6800 3950
Wire Wire Line
	6800 3950 6800 4000
Wire Wire Line
	6350 4450 6350 4650
Wire Wire Line
	6350 4650 6800 4650
Connection ~ 6800 4650
Wire Wire Line
	6800 4650 6800 4700
$Comp
L Transistor_FET:2N7002 Q3
U 1 1 5FC31636
P 8850 4900
F 0 "Q3" H 9054 4946 50  0000 L CNN
F 1 "2N7002" H 9054 4855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9050 4825 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 8850 4900 50  0001 L CNN
	1    8850 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4600 8950 4650
$Comp
L power:GND #PWR040
U 1 1 5FC31CAF
P 8950 5300
F 0 "#PWR040" H 8950 5050 50  0001 C CNN
F 1 "GND" H 8955 5127 50  0000 C CNN
F 2 "" H 8950 5300 50  0001 C CNN
F 3 "" H 8950 5300 50  0001 C CNN
	1    8950 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5FC31CB9
P 8600 5100
F 0 "R15" H 8541 5054 50  0000 R CNN
F 1 "9.1k" H 8541 5145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8600 5100 50  0001 C CNN
F 3 "~" H 8600 5100 50  0001 C CNN
	1    8600 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R14
U 1 1 5FC31CC3
P 8450 4900
F 0 "R14" V 8646 4900 50  0000 C CNN
F 1 "910" V 8555 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 8450 4900 50  0001 C CNN
F 3 "~" H 8450 4900 50  0001 C CNN
	1    8450 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8550 4900 8600 4900
Wire Wire Line
	8600 5000 8600 4900
Connection ~ 8600 4900
Wire Wire Line
	8600 4900 8650 4900
Text GLabel 8250 4900 0    50   Input ~ 0
RELAY1
Wire Wire Line
	8250 4900 8350 4900
Wire Wire Line
	8950 3900 8950 3950
Text GLabel 9450 4700 2    50   Input ~ 0
220V_PHASE
Wire Wire Line
	9450 4700 9350 4700
Wire Wire Line
	9350 4700 9350 4600
$Comp
L power:+5V #PWR039
U 1 1 5FC31CD8
P 8950 3900
F 0 "#PWR039" H 8950 3750 50  0001 C CNN
F 1 "+5V" H 8965 4073 50  0000 C CNN
F 2 "" H 8950 3900 50  0001 C CNN
F 3 "" H 8950 3900 50  0001 C CNN
	1    8950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 5100 8950 5250
Wire Wire Line
	8600 5200 8600 5250
Wire Wire Line
	8600 5250 8950 5250
Connection ~ 8950 5250
Wire Wire Line
	8950 5250 8950 5300
$Comp
L terrarium_control:NRP-10-C-05D K2
U 1 1 5FC31CEA
P 9100 4250
F 0 "K2" H 9580 4246 50  0000 L CNN
F 1 "NRP-10-C-05D" H 9580 4155 50  0000 L CNN
F 2 "terrarium_control:NRP-10-C" H 9900 4250 50  0001 C CNN
F 3 "" H 9900 4250 50  0001 C CNN
	1    9100 4250
	1    0    0    -1  
$EndComp
$Comp
L terrarium_control:M5 D2
U 1 1 5FC31CF4
P 8500 4300
F 0 "D2" V 8454 4380 50  0000 L CNN
F 1 "M5" V 8545 4380 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 8500 4300 50  0001 C CNN
F 3 "" H 8500 4300 50  0001 C CNN
	1    8500 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 4150 8500 3950
Wire Wire Line
	8500 3950 8950 3950
Connection ~ 8950 3950
Wire Wire Line
	8950 3950 8950 4000
Wire Wire Line
	8500 4450 8500 4650
Wire Wire Line
	8500 4650 8950 4650
Connection ~ 8950 4650
Wire Wire Line
	8950 4650 8950 4700
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5FC40D20
P 4650 5850
F 0 "J7" H 4730 5892 50  0000 L CNN
F 1 "UART" H 4730 5801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4650 5850 50  0001 C CNN
F 3 "~" H 4650 5850 50  0001 C CNN
	1    4650 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5FC41155
P 4350 5950
F 0 "#PWR026" H 4350 5700 50  0001 C CNN
F 1 "GND" V 4355 5822 50  0000 R CNN
F 2 "" H 4350 5950 50  0001 C CNN
F 3 "" H 4350 5950 50  0001 C CNN
	1    4350 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 5950 4450 5950
Text GLabel 4350 5850 0    50   Output ~ 0
MCU_RXD
Text GLabel 4350 5750 0    50   Input ~ 0
MCU_TXD
Wire Wire Line
	4350 5750 4450 5750
Wire Wire Line
	4350 5850 4450 5850
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5FC53B08
P 4600 6400
F 0 "J5" H 4650 6717 50  0000 C CNN
F 1 "ICSP" H 4650 6626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4600 6400 50  0001 C CNN
F 3 "~" H 4600 6400 50  0001 C CNN
	1    4600 6400
	1    0    0    -1  
$EndComp
Text GLabel 4300 6300 0    50   Input ~ 0
MISO
Text GLabel 5000 6400 2    50   Output ~ 0
MOSI
$Comp
L power:GND #PWR033
U 1 1 5FC550D2
P 5000 6500
F 0 "#PWR033" H 5000 6250 50  0001 C CNN
F 1 "GND" V 5005 6372 50  0000 R CNN
F 2 "" H 5000 6500 50  0001 C CNN
F 3 "" H 5000 6500 50  0001 C CNN
	1    5000 6500
	0    -1   -1   0   
$EndComp
NoConn ~ 4900 6300
Text GLabel 4300 6500 0    50   Output ~ 0
RESET
Text GLabel 4300 6400 0    50   Output ~ 0
SCK
Wire Wire Line
	4300 6300 4400 6300
Wire Wire Line
	4300 6400 4400 6400
Wire Wire Line
	4300 6500 4400 6500
Wire Wire Line
	4900 6400 5000 6400
Wire Wire Line
	4900 6500 5000 6500
Wire Wire Line
	1650 1250 1650 1200
Wire Wire Line
	1750 1250 1750 1200
Wire Wire Line
	1750 1200 1650 1200
Connection ~ 1650 1200
Wire Wire Line
	1650 1200 1050 1200
$Comp
L Device:C_Small C3
U 1 1 5FC42E6D
P 1400 850
F 0 "C3" V 1171 850 50  0000 C CNN
F 1 "100nF" V 1262 850 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1400 850 50  0001 C CNN
F 3 "~" H 1400 850 50  0001 C CNN
	1    1400 850 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5FC43CD6
P 1200 950
F 0 "#PWR06" H 1200 700 50  0001 C CNN
F 1 "GND" H 1205 777 50  0000 C CNN
F 2 "" H 1200 950 50  0001 C CNN
F 3 "" H 1200 950 50  0001 C CNN
	1    1200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 800  1650 850 
Wire Wire Line
	1200 950  1200 850 
Wire Wire Line
	1200 850  1300 850 
Wire Wire Line
	1500 850  1650 850 
Connection ~ 1650 850 
Wire Wire Line
	1650 850  1650 1200
$Comp
L power:GND #PWR02
U 1 1 5FC55623
P 900 6000
F 0 "#PWR02" H 900 5750 50  0001 C CNN
F 1 "GND" H 905 5827 50  0000 C CNN
F 2 "" H 900 6000 50  0001 C CNN
F 3 "" H 900 6000 50  0001 C CNN
	1    900  6000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5FC56276
P 700 5750
F 0 "C1" H 788 5796 50  0000 L CNN
F 1 "1mF" H 788 5705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 700 5750 50  0001 C CNN
F 3 "~" H 700 5750 50  0001 C CNN
	1    700  5750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5FC56E72
P 700 5550
F 0 "#PWR01" H 700 5400 50  0001 C CNN
F 1 "+5V" H 715 5723 50  0000 C CNN
F 2 "" H 700 5550 50  0001 C CNN
F 3 "" H 700 5550 50  0001 C CNN
	1    700  5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  5650 700  5550
$Comp
L Device:CP_Small C2
U 1 1 5FC5CB67
P 1100 5750
F 0 "C2" H 1188 5796 50  0000 L CNN
F 1 "1mF" H 1188 5705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1100 5750 50  0001 C CNN
F 3 "~" H 1100 5750 50  0001 C CNN
	1    1100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5950 700  5950
Wire Wire Line
	700  5950 700  5850
Wire Wire Line
	900  5950 1100 5950
Wire Wire Line
	1100 5950 1100 5850
Connection ~ 900  5950
Wire Wire Line
	900  6000 900  5950
$Comp
L power:+12V #PWR05
U 1 1 5FC70336
P 1100 5550
F 0 "#PWR05" H 1100 5400 50  0001 C CNN
F 1 "+12V" H 1115 5723 50  0000 C CNN
F 2 "" H 1100 5550 50  0001 C CNN
F 3 "" H 1100 5550 50  0001 C CNN
	1    1100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5650 1100 5550
$Comp
L Device:CP_Small C4
U 1 1 5FC76FCD
P 1900 850
F 0 "C4" V 2125 850 50  0000 C CNN
F 1 "47uF" V 2034 850 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 1900 850 50  0001 C CNN
F 3 "~" H 1900 850 50  0001 C CNN
	1    1900 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5FC77572
P 2100 950
F 0 "#PWR017" H 2100 700 50  0001 C CNN
F 1 "GND" H 2105 777 50  0000 C CNN
F 2 "" H 2100 950 50  0001 C CNN
F 3 "" H 2100 950 50  0001 C CNN
	1    2100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 850  1800 850 
Wire Wire Line
	2000 850  2100 850 
Wire Wire Line
	2100 850  2100 950 
$Comp
L Device:C_Small C6
U 1 1 5FC84380
P 4200 1150
F 0 "C6" V 3971 1150 50  0000 C CNN
F 1 "100nF" V 4062 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4200 1150 50  0001 C CNN
F 3 "~" H 4200 1150 50  0001 C CNN
	1    4200 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 1350 4450 1150
Wire Wire Line
	4300 1150 4450 1150
$Comp
L power:GND #PWR023
U 1 1 5FC92956
P 4000 1250
F 0 "#PWR023" H 4000 1000 50  0001 C CNN
F 1 "GND" H 4005 1077 50  0000 C CNN
F 2 "" H 4000 1250 50  0001 C CNN
F 3 "" H 4000 1250 50  0001 C CNN
	1    4000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1250 4000 1150
Wire Wire Line
	4000 1150 4100 1150
Wire Wire Line
	4550 1350 4550 1300
Wire Wire Line
	4550 1300 4700 1300
Wire Wire Line
	4700 1300 4700 1150
$Comp
L Device:C_Small C7
U 1 1 5FCA0C74
P 4950 1150
F 0 "C7" V 4721 1150 50  0000 C CNN
F 1 "10nF" V 4812 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4950 1150 50  0001 C CNN
F 3 "~" H 4950 1150 50  0001 C CNN
	1    4950 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5FCA10B0
P 5150 1250
F 0 "#PWR034" H 5150 1000 50  0001 C CNN
F 1 "GND" H 5155 1077 50  0000 C CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "" H 5150 1250 50  0001 C CNN
	1    5150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1150 4700 1150
Connection ~ 4700 1150
Wire Wire Line
	4700 1150 4700 1050
Wire Wire Line
	5050 1150 5150 1150
Wire Wire Line
	5150 1150 5150 1250
$Comp
L Device:CP_Small C5
U 1 1 5FCAF8AA
P 4200 800
F 0 "C5" V 3975 800 50  0000 C CNN
F 1 "47uF" V 4066 800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 4200 800 50  0001 C CNN
F 3 "~" H 4200 800 50  0001 C CNN
	1    4200 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1150 4000 800 
Wire Wire Line
	4000 800  4100 800 
Connection ~ 4000 1150
Wire Wire Line
	4450 700  4450 800 
Connection ~ 4450 1150
Wire Wire Line
	4300 800  4450 800 
Connection ~ 4450 800 
Wire Wire Line
	4450 800  4450 1150
$Comp
L Device:Battery_Cell BT1
U 1 1 5FCC71CD
P 900 6800
F 0 "BT1" H 1018 6896 50  0000 L CNN
F 1 "CR2032" H 1018 6805 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_106_1x20mm" V 900 6860 50  0001 C CNN
F 3 "~" V 900 6860 50  0001 C CNN
	1    900  6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FCC80B8
P 900 7000
F 0 "#PWR04" H 900 6750 50  0001 C CNN
F 1 "GND" H 905 6827 50  0000 C CNN
F 2 "" H 900 7000 50  0001 C CNN
F 3 "" H 900 7000 50  0001 C CNN
	1    900  7000
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR03
U 1 1 5FCD0775
P 900 6500
F 0 "#PWR03" H 900 6350 50  0001 C CNN
F 1 "+BATT" H 915 6673 50  0000 C CNN
F 2 "" H 900 6500 50  0001 C CNN
F 3 "" H 900 6500 50  0001 C CNN
	1    900  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  6500 900  6550
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FCE1231
P 2100 6550
F 0 "J1" H 2180 6542 50  0000 L CNN
F 1 "5V_IN" H 2180 6451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2100 6550 50  0001 C CNN
F 3 "~" H 2100 6550 50  0001 C CNN
	1    2100 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FCE15A6
P 1800 6650
F 0 "#PWR012" H 1800 6400 50  0001 C CNN
F 1 "GND" V 1805 6522 50  0000 R CNN
F 2 "" H 1800 6650 50  0001 C CNN
F 3 "" H 1800 6650 50  0001 C CNN
	1    1800 6650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5FCE22BD
P 1800 6550
F 0 "#PWR011" H 1800 6400 50  0001 C CNN
F 1 "+5V" V 1815 6678 50  0000 L CNN
F 2 "" H 1800 6550 50  0001 C CNN
F 3 "" H 1800 6550 50  0001 C CNN
	1    1800 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 6550 1850 6550
Wire Wire Line
	1800 6650 1850 6650
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5FCF2CD1
P 2100 6800
F 0 "J2" H 2180 6792 50  0000 L CNN
F 1 "5V_OUT" H 2180 6701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2100 6800 50  0001 C CNN
F 3 "~" H 2100 6800 50  0001 C CNN
	1    2100 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FCF3622
P 1800 6900
F 0 "#PWR014" H 1800 6650 50  0001 C CNN
F 1 "GND" V 1805 6772 50  0000 R CNN
F 2 "" H 1800 6900 50  0001 C CNN
F 3 "" H 1800 6900 50  0001 C CNN
	1    1800 6900
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5FCF3634
P 1800 6800
F 0 "#PWR013" H 1800 6650 50  0001 C CNN
F 1 "+5V" V 1815 6928 50  0000 L CNN
F 2 "" H 1800 6800 50  0001 C CNN
F 3 "" H 1800 6800 50  0001 C CNN
	1    1800 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 6800 1900 6800
Wire Wire Line
	1800 6900 1900 6900
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5FCFC51B
P 2100 7050
F 0 "J3" H 2180 7042 50  0000 L CNN
F 1 "12V_IN" H 2180 6951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2100 7050 50  0001 C CNN
F 3 "~" H 2100 7050 50  0001 C CNN
	1    2100 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FCFC62C
P 1800 7150
F 0 "#PWR016" H 1800 6900 50  0001 C CNN
F 1 "GND" V 1805 7022 50  0000 R CNN
F 2 "" H 1800 7150 50  0001 C CNN
F 3 "" H 1800 7150 50  0001 C CNN
	1    1800 7150
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR015
U 1 1 5FCFD2BA
P 1800 7050
F 0 "#PWR015" H 1800 6900 50  0001 C CNN
F 1 "+12V" V 1815 7178 50  0000 L CNN
F 2 "" H 1800 7050 50  0001 C CNN
F 3 "" H 1800 7050 50  0001 C CNN
	1    1800 7050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 7050 1850 7050
Wire Wire Line
	1800 7150 1900 7150
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5FD19996
P 4650 6850
F 0 "J8" H 4730 6892 50  0000 L CNN
F 1 "ONE_WIRE" H 4730 6801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4650 6850 50  0001 C CNN
F 3 "~" H 4650 6850 50  0001 C CNN
	1    4650 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR027
U 1 1 5FD19C52
P 4350 6750
F 0 "#PWR027" H 4350 6600 50  0001 C CNN
F 1 "+5V" V 4365 6878 50  0000 L CNN
F 2 "" H 4350 6750 50  0001 C CNN
F 3 "" H 4350 6750 50  0001 C CNN
	1    4350 6750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5FD19F9A
P 4350 6950
F 0 "#PWR028" H 4350 6700 50  0001 C CNN
F 1 "GND" V 4355 6822 50  0000 R CNN
F 2 "" H 4350 6950 50  0001 C CNN
F 3 "" H 4350 6950 50  0001 C CNN
	1    4350 6950
	0    1    1    0   
$EndComp
Text GLabel 4350 6850 0    50   BiDi ~ 0
ONE_WIRE
Wire Wire Line
	4350 6750 4450 6750
Wire Wire Line
	4350 6850 4450 6850
Wire Wire Line
	4350 6950 4450 6950
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FD4B405
P 1850 6550
F 0 "#FLG01" H 1850 6625 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 6723 50  0001 C CNN
F 2 "" H 1850 6550 50  0001 C CNN
F 3 "~" H 1850 6550 50  0001 C CNN
	1    1850 6550
	1    0    0    -1  
$EndComp
Connection ~ 1850 6550
Wire Wire Line
	1850 6550 1900 6550
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5FD4B982
P 1850 7050
F 0 "#FLG02" H 1850 7125 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 7223 50  0001 C CNN
F 2 "" H 1850 7050 50  0001 C CNN
F 3 "~" H 1850 7050 50  0001 C CNN
	1    1850 7050
	1    0    0    -1  
$EndComp
Connection ~ 1850 7050
Wire Wire Line
	1850 7050 1900 7050
$Comp
L Connector:Screw_Terminal_01x03 J12
U 1 1 5FD4CA18
P 9350 3300
F 0 "J12" V 9314 3112 50  0000 R CNN
F 1 "LAMP1" V 9223 3112 50  0000 R CNN
F 2 "terrarium_control:DG128-5.0-03P" H 9350 3300 50  0001 C CNN
F 3 "~" H 9350 3300 50  0001 C CNN
	1    9350 3300
	0    -1   -1   0   
$EndComp
Text GLabel 9350 3600 3    50   Input ~ 0
220V_N
Wire Wire Line
	9350 3600 9350 3500
Wire Wire Line
	9250 3500 9250 4000
Wire Wire Line
	9450 3500 9450 4000
$Comp
L Connector:Screw_Terminal_01x03 J11
U 1 1 5FDA2C16
P 7200 3300
F 0 "J11" V 7164 3112 50  0000 R CNN
F 1 "LAMP0" V 7073 3112 50  0000 R CNN
F 2 "terrarium_control:DG128-5.0-03P" H 7200 3300 50  0001 C CNN
F 3 "~" H 7200 3300 50  0001 C CNN
	1    7200 3300
	0    -1   -1   0   
$EndComp
Text GLabel 7200 3600 3    50   Input ~ 0
220V_N
Wire Wire Line
	7200 3600 7200 3500
Wire Wire Line
	7100 3500 7100 4000
Wire Wire Line
	7300 3500 7300 4000
Text GLabel 4350 7250 0    50   Output ~ 0
220V_N
Text GLabel 4350 7150 0    50   Output ~ 0
220V_PHASE
Wire Wire Line
	4350 7150 4450 7150
Wire Wire Line
	4350 7250 4450 7250
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 5FDC3A5B
P 4650 7150
F 0 "J9" H 4730 7142 50  0000 L CNN
F 1 "220V_IN" H 4730 7051 50  0000 L CNN
F 2 "terrarium_control:DG128-5.0-02P" H 4650 7150 50  0001 C CNN
F 3 "~" H 4650 7150 50  0001 C CNN
	1    4650 7150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J10
U 1 1 5FDC3EAD
P 4650 7450
F 0 "J10" H 4730 7442 50  0000 L CNN
F 1 "220V_OUT" H 4730 7351 50  0000 L CNN
F 2 "terrarium_control:DG128-5.0-02P" H 4650 7450 50  0001 C CNN
F 3 "~" H 4650 7450 50  0001 C CNN
	1    4650 7450
	1    0    0    -1  
$EndComp
Text GLabel 4350 7550 0    50   Input ~ 0
220V_N
Text GLabel 4350 7450 0    50   Input ~ 0
220V_PHASE
Wire Wire Line
	4350 7450 4450 7450
Wire Wire Line
	4350 7550 4450 7550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FDD2F20
P 1850 6650
F 0 "#FLG0101" H 1850 6725 50  0001 C CNN
F 1 "PWR_FLAG" H 1850 6823 50  0001 C CNN
F 2 "" H 1850 6650 50  0001 C CNN
F 3 "~" H 1850 6650 50  0001 C CNN
	1    1850 6650
	-1   0    0    1   
$EndComp
Connection ~ 1850 6650
Wire Wire Line
	1850 6650 1900 6650
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FDD3135
P 900 6550
F 0 "#FLG0102" H 900 6625 50  0001 C CNN
F 1 "PWR_FLAG" H 900 6723 50  0001 C CNN
F 2 "" H 900 6550 50  0001 C CNN
F 3 "~" H 900 6550 50  0001 C CNN
	1    900  6550
	0    -1   -1   0   
$EndComp
Connection ~ 900  6550
Wire Wire Line
	900  6550 900  6600
Wire Wire Line
	900  6900 900  7000
Wire Wire Line
	3750 3500 4200 3500
Wire Wire Line
	3750 3200 3750 3500
Connection ~ 4200 3500
Wire Wire Line
	4200 3500 4200 3450
Connection ~ 4200 2600
Wire Wire Line
	4200 2600 4200 2650
Wire Wire Line
	4200 3200 4200 3150
Wire Wire Line
	3900 3200 4200 3200
Wire Wire Line
	3900 3100 3900 3200
Wire Wire Line
	3750 3100 3900 3100
Wire Wire Line
	4200 2900 4200 2850
Wire Wire Line
	3900 2900 4200 2900
Wire Wire Line
	3900 3000 3900 2900
Wire Wire Line
	3750 3000 3900 3000
Connection ~ 4200 3200
Wire Wire Line
	4200 3250 4200 3200
Connection ~ 4200 2900
Wire Wire Line
	4200 2950 4200 2900
$Comp
L Device:R_Small R6
U 1 1 5FC18B29
P 4200 2750
F 0 "R6" H 4259 2796 50  0000 L CNN
F 1 "2.2k" H 4259 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4200 2750 50  0001 C CNN
F 3 "~" H 4200 2750 50  0001 C CNN
	1    4200 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5FC18D02
P 4200 3050
F 0 "R7" H 4259 3096 50  0000 L CNN
F 1 "2.2k" H 4259 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4200 3050 50  0001 C CNN
F 3 "~" H 4200 3050 50  0001 C CNN
	1    4200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5FC1900A
P 4200 3350
F 0 "R8" H 4259 3396 50  0000 L CNN
F 1 "2.2k" H 4259 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4200 3350 50  0001 C CNN
F 3 "~" H 4200 3350 50  0001 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J13
U 1 1 5FC4843A
P 5750 5850
F 0 "J13" H 5830 5892 50  0000 L CNN
F 1 "I2C" H 5830 5801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5750 5850 50  0001 C CNN
F 3 "~" H 5750 5850 50  0001 C CNN
	1    5750 5850
	1    0    0    -1  
$EndComp
Text GLabel 5450 5850 0    50   BiDi ~ 0
SDA
Text GLabel 5450 5750 0    50   Input ~ 0
SCL
Wire Wire Line
	5450 5750 5550 5750
Wire Wire Line
	5450 5850 5550 5850
$Comp
L power:GND #PWR041
U 1 1 5FC559F2
P 5450 5950
F 0 "#PWR041" H 5450 5700 50  0001 C CNN
F 1 "GND" V 5455 5822 50  0000 R CNN
F 2 "" H 5450 5950 50  0001 C CNN
F 3 "" H 5450 5950 50  0001 C CNN
	1    5450 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	5450 5950 5550 5950
$EndSCHEMATC
