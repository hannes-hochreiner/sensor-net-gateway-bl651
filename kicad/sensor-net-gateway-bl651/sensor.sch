EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L HH_Sensirion:SHTC3 S2
U 1 1 5F8F9C71
P 6100 3850
F 0 "S2" H 6100 4215 50  0000 C CNN
F 1 "SHTC3" H 6100 4124 50  0000 C CNN
F 2 "HH_Sensirion:SHTC3" H 6100 3850 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Sensirion%20PDFs/HT_DS_SHTC3_D1.pdf" H 6100 3850 50  0001 C CNN
F 4 "1649-1105-1-ND" H 6100 3850 50  0001 C CNN "Digi-Key Part Number"
F 5 "Sensirion AG" H 6100 3850 50  0001 C CNN "Manufacturer"
F 6 "SHTC3" H 6100 3850 50  0001 C CNN "Manufacturer Part Number"
	1    6100 3850
	1    0    0    -1  
$EndComp
Text HLabel 6550 3750 2    50   Input ~ 0
GND
Text HLabel 5100 3750 0    50   Input ~ 0
VDD
$Comp
L Device:R R6
U 1 1 5F8FA584
P 5400 3900
F 0 "R6" H 5470 3946 50  0000 L CNN
F 1 "10k" H 5470 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5330 3900 50  0001 C CNN
F 3 "~" H 5400 3900 50  0001 C CNN
	1    5400 3900
	1    0    0    -1  
$EndComp
Connection ~ 5400 3750
Wire Wire Line
	5400 3750 5650 3750
$Comp
L Device:R R5
U 1 1 5F8FACDF
P 5250 4350
F 0 "R5" H 5320 4396 50  0000 L CNN
F 1 "10k" H 5320 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5180 4350 50  0001 C CNN
F 3 "~" H 5250 4350 50  0001 C CNN
	1    5250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4500 6550 4500
Wire Wire Line
	6550 4500 6550 3950
Wire Wire Line
	5650 3950 5650 4050
Wire Wire Line
	5650 4050 5400 4050
Text HLabel 5100 4050 0    50   Input ~ 0
SCL
Text HLabel 5100 4500 0    50   Input ~ 0
SDA
Wire Wire Line
	5100 4050 5400 4050
Connection ~ 5400 4050
Wire Wire Line
	5100 4500 5250 4500
Connection ~ 5250 4500
Wire Wire Line
	5250 4200 5250 3750
Connection ~ 5250 3750
Wire Wire Line
	5250 3750 5400 3750
Wire Wire Line
	5100 3750 5250 3750
$EndSCHEMATC
