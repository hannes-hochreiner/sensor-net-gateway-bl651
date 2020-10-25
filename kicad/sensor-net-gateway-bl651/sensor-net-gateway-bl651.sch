EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6950 2200 1550 1800
U 5F8C705B
F0 "mcu" 50
F1 "mcu.sch" 50
F2 "VDD" I L 6950 2350 50 
F3 "UART_RTS" I L 6950 3100 50 
F4 "UART_TX" I L 6950 2900 50 
F5 "UART_CTS" I L 6950 3000 50 
F6 "UART_RX" I L 6950 2800 50 
F7 "FTDI_DIO0" I L 6950 3450 50 
F8 "FTDI_DIO1" I L 6950 3550 50 
F9 "FTDI_DIO2" I L 6950 3650 50 
F10 "FTDI_DIO3" I L 6950 3750 50 
F11 "SENSOR.SCL" I R 8500 3750 50 
F12 "SENSOR.SDA" I R 8500 3650 50 
$EndSheet
$Sheet
S 3250 2550 1250 1450
U 5F8C7085
F0 "power" 50
F1 "power.sch" 50
F2 "VBUS" I R 4500 2950 50 
F3 "3V0" I R 4500 2750 50 
$EndSheet
$Sheet
S 5050 2550 1300 1450
U 5F8C70B0
F0 "usb" 50
F1 "usb.sch" 50
F2 "UART.TX" I R 6350 2800 50 
F3 "UART.RX" I R 6350 2900 50 
F4 "UART.RTS" I R 6350 3000 50 
F5 "UART.CTS" I R 6350 3100 50 
F6 "3V0" I L 5050 2750 50 
F7 "VBUS" I L 5050 2950 50 
F8 "FTDI_DIO0" I R 6350 3450 50 
F9 "FTDI_DIO1" I R 6350 3550 50 
F10 "FTDI_DIO3" I R 6350 3750 50 
F11 "FTDI_DIO2" I R 6350 3650 50 
$EndSheet
Wire Wire Line
	4500 2750 4800 2750
Wire Wire Line
	4500 2950 5050 2950
Wire Wire Line
	6950 2350 4800 2350
Wire Wire Line
	4800 2350 4800 2750
Connection ~ 4800 2750
Wire Wire Line
	4800 2750 4900 2750
Wire Wire Line
	6950 3100 6350 3100
Wire Wire Line
	6350 3000 6950 3000
Wire Wire Line
	6350 2800 6950 2800
Wire Wire Line
	6350 2900 6950 2900
Wire Wire Line
	6950 3750 6350 3750
Wire Wire Line
	6350 3650 6950 3650
Wire Wire Line
	6950 3550 6350 3550
Wire Wire Line
	6350 3450 6950 3450
$Sheet
S 5100 4500 1250 950 
U 5F8F4FDB
F0 "sensor" 50
F1 "sensor.sch" 50
F2 "VDD" I L 5100 4800 50 
F3 "SCL" I R 6350 4700 50 
F4 "SDA" I R 6350 4800 50 
$EndSheet
Wire Wire Line
	6350 4700 8600 4700
Wire Wire Line
	8600 4700 8600 3750
Wire Wire Line
	8600 3750 8500 3750
Wire Wire Line
	8500 3650 8700 3650
Wire Wire Line
	8700 3650 8700 4800
Wire Wire Line
	8700 4800 6350 4800
Wire Wire Line
	5100 4800 4900 4800
Wire Wire Line
	4900 4800 4900 2750
Connection ~ 4900 2750
Wire Wire Line
	4900 2750 5050 2750
$Comp
L Mechanical:MountingHole H2
U 1 1 5F926DDB
P 3350 5000
F 0 "H2" H 3450 5046 50  0000 L CNN
F 1 "MountingHole" H 3450 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 3350 5000 50  0001 C CNN
F 3 "~" H 3350 5000 50  0001 C CNN
	1    3350 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F926F53
P 3350 4750
F 0 "H1" H 3450 4796 50  0000 L CNN
F 1 "MountingHole" H 3450 4705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_Pad_Via" H 3350 4750 50  0001 C CNN
F 3 "~" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
$Comp
L HH_Hochreiner:logo L3
U 1 1 5F922A66
P 3350 5300
F 0 "L3" H 3375 5346 50  0000 L CNN
F 1 "logo" H 3375 5255 50  0000 L CNN
F 2 "HH_Hochreiner:logo" H 3250 5150 50  0001 C CNN
F 3 "" H 3350 5300 50  0001 C CNN
	1    3350 5300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
