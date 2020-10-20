EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3550 3600 3600 3600
Wire Wire Line
	3700 3600 3700 3750
Wire Wire Line
	3700 3750 3800 3750
Connection ~ 3700 3600
Wire Wire Line
	3700 3600 3800 3600
$Comp
L Device:C C7
U 1 1 5D625BF4
P 3600 3900
F 0 "C7" H 3715 3946 50  0000 L CNN
F 1 "4.7µF" H 3715 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3638 3750 50  0001 C CNN
F 3 "~" H 3600 3900 50  0001 C CNN
F 4 "1276-1907-1-ND" H 3600 3900 50  0001 C CNN "DigiKey_PartNumber"
F 5 "Samsung Electro-Mechanics" H 3600 3900 50  0001 C CNN "Manufacturer"
F 6 "CL10A475MQ8NNNC" H 3600 3900 50  0001 C CNN "Manufacturer_PartNumber"
	1    3600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3750 3600 3600
Connection ~ 3600 3600
Wire Wire Line
	3600 3600 3700 3600
$Comp
L pspice:INDUCTOR L1
U 1 1 5D626698
P 5400 3600
F 0 "L1" H 5400 3815 50  0000 C CNN
F 1 "1µH" H 5400 3724 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 5400 3600 50  0001 C CNN
F 3 "~" H 5400 3600 50  0001 C CNN
F 4 "445-6391-1-ND" H 5400 3600 50  0001 C CNN "DigiKey_PartNumber"
	1    5400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3600 5150 3600
$Comp
L Device:C C9
U 1 1 5D62710D
P 5750 3900
F 0 "C9" H 5865 3946 50  0000 L CNN
F 1 "4.7µF" H 5865 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5788 3750 50  0001 C CNN
F 3 "~" H 5750 3900 50  0001 C CNN
F 4 "1276-1907-1-ND" H 5750 3900 50  0001 C CNN "DigiKey_PartNumber"
	1    5750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D6271D9
P 5250 3900
F 0 "C8" H 5365 3946 50  0000 L CNN
F 1 "560pF" H 5365 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5288 3750 50  0001 C CNN
F 3 "~" H 5250 3900 50  0001 C CNN
F 4 "1276-2315-1-ND" H 5250 3900 50  0001 C CNN "DigiKey_PartNumber"
	1    5250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3750 5250 3750
Wire Wire Line
	5250 3750 5750 3750
Connection ~ 5250 3750
Wire Wire Line
	5750 3750 5750 3600
Wire Wire Line
	5750 3600 5650 3600
Connection ~ 5750 3750
Wire Wire Line
	5250 4050 5000 4050
Wire Wire Line
	5000 4050 5000 3900
Wire Wire Line
	3600 4050 3600 4350
Wire Wire Line
	3600 4350 4300 4350
Wire Wire Line
	5750 4350 5750 4050
Wire Wire Line
	4500 4200 4500 4350
Connection ~ 4500 4350
Wire Wire Line
	4500 4350 5750 4350
Wire Wire Line
	4300 4200 4300 4350
Connection ~ 4300 4350
$Comp
L Device:C C10
U 1 1 5D6304E8
P 6200 3900
F 0 "C10" H 6315 3946 50  0000 L CNN
F 1 "0.47µF" H 6315 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6238 3750 50  0001 C CNN
F 3 "~" H 6200 3900 50  0001 C CNN
F 4 "1276-2082-1-ND" H 6200 3900 50  0001 C CNN "DigiKey_PartNumber"
	1    6200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3750 6200 3750
Wire Wire Line
	6200 3750 6600 3750
Connection ~ 6200 3750
Wire Wire Line
	6600 3750 6600 3850
Wire Wire Line
	6600 3850 6700 3850
Connection ~ 6600 3750
Wire Wire Line
	6600 3750 6700 3750
Wire Wire Line
	7250 4200 7250 4350
Wire Wire Line
	7250 4350 6200 4350
Connection ~ 5750 4350
Wire Wire Line
	6200 4050 6200 4350
Connection ~ 6200 4350
Wire Wire Line
	6200 4350 5750 4350
$Comp
L Device:C C12
U 1 1 5D6371A2
P 7800 3900
F 0 "C12" H 7915 3946 50  0000 L CNN
F 1 "10µF" H 7915 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7838 3750 50  0001 C CNN
F 3 "~" H 7800 3900 50  0001 C CNN
F 4 "1276-1119-1-ND" H 7800 3900 50  0001 C CNN "DigiKey_PartNumber"
	1    7800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4050 7800 4350
Wire Wire Line
	7800 4350 7250 4350
Connection ~ 7250 4350
Wire Wire Line
	7900 3750 7800 3750
Text HLabel 3550 3600 0    50   Input ~ 0
VBUS
Text HLabel 7900 3750 2    50   Input ~ 0
3V0
$Comp
L HH_MicrochipTechnology:MIC23050-SYML-TR S1
U 1 1 5F8F236C
P 4400 3750
F 0 "S1" H 4400 4165 50  0000 C CNN
F 1 "MIC23050-SYML-TR" H 4400 4074 50  0000 C CNN
F 2 "HH_MicrochipTechnology:MIC23050-SYML-TR" H 4600 3350 50  0001 C CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en580286" H 4400 2800 50  0001 C CNN
F 4 "576-3351-1-ND" H 4400 3750 50  0001 C CNN "Digi-Key Part Number"
F 5 "Microchip Technology" H 4400 3750 50  0001 C CNN "Manufacturer"
F 6 "MIC23050-SYML-TR" H 4400 3750 50  0001 C CNN "Manufacturer Part Number"
F 7 "IC REG BUCK 3.3V 600MA 8MLF" H 4400 3750 50  0001 C CNN "Description"
	1    4400 3750
	1    0    0    -1  
$EndComp
$Comp
L HH_MicrochipTechnology:MIC94310-MYM5-TR L2
U 1 1 5F8F2FDA
P 7250 3800
F 0 "L2" H 7250 4115 50  0000 C CNN
F 1 "MIC94310-MYM5-TR" H 7250 4024 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7250 2550 50  0001 C CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en580409" H 7250 2650 50  0001 C CNN
F 4 "MIC94310-MYM5-CT-ND" H 7250 3800 50  0001 C CNN "Digi-Key Part Number"
F 5 "Microchip Technology" H 7250 3800 50  0001 C CNN "Manufacturer"
F 6 "MIC94310-MYM5-TR" H 7250 3800 50  0001 C CNN "Manufacturer Part Number"
F 7 "IC REG LINEAR 2.8V 200MA SOT23-5" H 7250 3800 50  0001 C CNN "Description"
	1    7250 3800
	1    0    0    -1  
$EndComp
Connection ~ 7800 3750
Wire Wire Line
	4300 4350 4500 4350
Text HLabel 4400 4350 3    50   Input ~ 0
GND
$EndSCHEMATC
