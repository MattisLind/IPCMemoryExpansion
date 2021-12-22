EESchema Schematic File Version 4
LIBS:IPCMemoryExpansionBoard-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "HP IPC Expanaion RAM and ROM"
Date ""
Rev "A"
Comp "Datormuseum.se"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L IPCMemoryExpansionBoard-rescue:C64AC-Connector J1
U 1 1 6048349C
P 1150 4200
F 0 "J1" H 1070 7667 50  0000 C CNN
F 1 "C64AC" H 1070 7576 50  0000 C CNN
F 2 "kicadlibs:DIN41612_C_2x32_Male_Horizontal_THT" H 1150 4250 50  0001 C CNN
F 3 " ~" H 1150 4250 50  0001 C CNN
	1    1150 4200
	-1   0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0101
U 1 1 60483571
P 2300 1000
F 0 "#PWR0101" H 2300 750 50  0001 C CNN
F 1 "GND" H 2305 827 50  0000 C CNN
F 2 "" H 2300 1000 50  0001 C CNN
F 3 "" H 2300 1000 50  0001 C CNN
	1    2300 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1000 2300 1000
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0102
U 1 1 604835D7
P 2400 900
F 0 "#PWR0102" H 2400 750 50  0001 C CNN
F 1 "+5V" H 2415 1073 50  0000 C CNN
F 2 "" H 2400 900 50  0001 C CNN
F 3 "" H 2400 900 50  0001 C CNN
	1    2400 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 900  2400 1300
Text Label 1700 1200 0    50   ~ 0
BA1
Text Label 1700 1500 0    50   ~ 0
BA2
Text Label 1700 1400 0    50   ~ 0
BA3
Text Label 1700 1700 0    50   ~ 0
BA4
Text Label 1700 1600 0    50   ~ 0
BA5
Text Label 1700 1800 0    50   ~ 0
BA7
Text Label 1700 1900 0    50   ~ 0
BA6
Text Label 1700 2000 0    50   ~ 0
BA9
Text Label 1700 2100 0    50   ~ 0
BA8
Text Label 1700 2200 0    50   ~ 0
BA11
Text Label 1700 2300 0    50   ~ 0
BA10
Text Label 1700 2600 0    50   ~ 0
BA13
Text Label 1700 2500 0    50   ~ 0
BA12
Text Label 1700 2800 0    50   ~ 0
BA15
Text Label 1700 2700 0    50   ~ 0
BA14
Wire Wire Line
	1450 2400 2100 2400
Text Label 1700 2900 0    50   ~ 0
BA16
Text Label 1700 3000 0    50   ~ 0
BA17
Text Label 1700 3100 0    50   ~ 0
BA18
Text Label 1700 3200 0    50   ~ 0
BA19
Text Label 1700 3300 0    50   ~ 0
BA20
Wire Wire Line
	1450 3700 2100 3700
Wire Wire Line
	2100 3700 2100 7000
Text Label 1700 3400 0    50   ~ 0
BA21
Text Label 1700 3500 0    50   ~ 0
BA22
Text Label 1700 3600 0    50   ~ 0
BA23
Wire Wire Line
	1450 5400 1900 5400
Text Label 1700 5400 0    50   ~ 0
BNPS
Wire Wire Line
	1450 5800 1900 5800
Text Label 1600 5700 0    50   ~ 0
NBRESET
Text Label 1700 5800 0    50   ~ 0
BRNW
Text Label 1700 6100 0    50   ~ 0
NBLD
Wire Wire Line
	1450 6000 1900 6000
Wire Wire Line
	2100 7300 2100 7450
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0108
U 1 1 604A01B7
P 2100 7450
F 0 "#PWR0108" H 2100 7200 50  0001 C CNN
F 1 "GND" H 2105 7277 50  0000 C CNN
F 2 "" H 2100 7450 50  0001 C CNN
F 3 "" H 2100 7450 50  0001 C CNN
	1    2100 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 7000 2100 7000
Wire Wire Line
	2100 7000 2100 7300
Connection ~ 2100 7300
Text Label 1700 6000 0    50   ~ 0
NBUD
Wire Wire Line
	1450 6100 1900 6100
Text Label 1600 6400 0    50   ~ 0
NBDTACK
Text Label 1650 6500 0    50   ~ 0
NBIMA
$Comp
L IPCMemoryExpansionBoard-rescue:74LVC245-tinkerforge U2
U 1 1 604ABED1
P 6350 1250
F 0 "U2" H 6350 1947 60  0000 C CNN
F 1 "74LVC245" H 6350 1841 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6350 1250 60  0001 C CNN
F 3 "" H 6350 1250 60  0000 C CNN
	1    6350 1250
	-1   0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:74LVC245-tinkerforge U3
U 1 1 604ABF9B
P 6350 2600
F 0 "U3" H 6350 3297 60  0000 C CNN
F 1 "74LVC245" H 6350 3191 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6350 2600 60  0001 C CNN
F 3 "" H 6350 2600 60  0000 C CNN
	1    6350 2600
	-1   0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:74LVC245-tinkerforge U1
U 1 1 604ABFD9
P 6350 3950
F 0 "U1" H 6350 4647 60  0000 C CNN
F 1 "74LVC245" H 6350 4541 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6350 3950 60  0001 C CNN
F 3 "" H 6350 3950 60  0000 C CNN
	1    6350 3950
	-1   0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:74LVC245-tinkerforge U4
U 1 1 604AC00D
P 7700 5600
F 0 "U4" H 7700 6297 60  0000 C CNN
F 1 "74LVC245" H 7700 6191 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7700 5600 60  0001 C CNN
F 3 "" H 7700 5600 60  0000 C CNN
	1    7700 5600
	-1   0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:74LVC245-tinkerforge U5
U 1 1 604AC049
P 7700 6900
F 0 "U5" H 7700 7597 60  0000 C CNN
F 1 "74LVC245" H 7700 7491 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7700 6900 60  0001 C CNN
F 3 "" H 7700 6900 60  0000 C CNN
	1    7700 6900
	-1   0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard:SST39VF3201C U7
U 1 1 604AC0CC
P 8750 1950
F 0 "U7" H 8750 3378 50  0000 C CNN
F 1 "SST38VF6401" H 8750 3287 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 8750 1950 50  0001 C CNN
F 3 "" H 8750 1950 50  0001 C CNN
	1    8750 1950
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard:AS6C6416 U8
U 1 1 604AC1E0
P 10200 5350
F 0 "U8" H 9750 6500 50  0000 C CNN
F 1 "AS6C6416" H 9900 6400 50  0000 C CNN
F 2 "Package_SO:TSOP-I-48_18.4x12mm_P0.5mm" H 10200 5350 50  0001 C CNN
F 3 "" H 10200 5350 50  0001 C CNN
	1    10200 5350
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:STM32F407ZETx-MCU_ST_STM32F4 U9
U 1 1 604AC346
P 13100 4450
F 0 "U9" H 13100 764 50  0000 C CNN
F 1 "STM32F407ZETx" H 13100 673 50  0000 C CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 12100 1050 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 13100 4450 50  0001 C CNN
	1    13100 4450
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard:XC2C32A U6
U 1 1 604AC48E
P 4800 9000
F 0 "U6" H 4200 7600 50  0000 C CNN
F 1 "XC2C32A" H 4300 7500 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 4800 9000 50  0001 C CNN
F 3 "" H 4800 9000 50  0001 C CNN
	1    4800 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 8000 3350 8000
Wire Wire Line
	3850 8100 3350 8100
Wire Wire Line
	3850 8200 3350 8200
Wire Wire Line
	3850 8300 3350 8300
Wire Wire Line
	3850 8400 3350 8400
Wire Wire Line
	3850 8500 3350 8500
Wire Wire Line
	3850 8600 3350 8600
Wire Wire Line
	3850 8700 3350 8700
Wire Wire Line
	3850 8800 3350 8800
Wire Wire Line
	3850 8900 3350 8900
Wire Wire Line
	3850 9000 3350 9000
Wire Wire Line
	3850 9100 3350 9100
Wire Wire Line
	3850 9200 3350 9200
Wire Wire Line
	3850 9300 3350 9300
Wire Wire Line
	3850 9400 3350 9400
Wire Wire Line
	3850 9500 3350 9500
Wire Wire Line
	3850 9700 3350 9700
Wire Wire Line
	3850 9900 3350 9900
Wire Wire Line
	3850 10000 3350 10000
Wire Wire Line
	3850 10100 3350 10100
Wire Wire Line
	3850 10200 3350 10200
Wire Wire Line
	5750 8000 6100 8000
Wire Wire Line
	5750 8100 6100 8100
Wire Wire Line
	5750 8200 6100 8200
Wire Wire Line
	5750 8300 6100 8300
Wire Wire Line
	5750 8400 6100 8400
Wire Wire Line
	5750 8500 6100 8500
Wire Wire Line
	5750 8600 6100 8600
Wire Wire Line
	5750 8700 6100 8700
Wire Wire Line
	5750 8800 6100 8800
Wire Wire Line
	5750 8900 6100 8900
Wire Wire Line
	5750 9000 6100 9000
Wire Wire Line
	5750 9100 6100 9100
Wire Wire Line
	5750 9200 6100 9200
Wire Wire Line
	5750 9300 6100 9300
Wire Wire Line
	5750 9400 6100 9400
Text Label 3450 8000 0    50   ~ 0
NOE
Text Label 3450 8100 0    50   ~ 0
NWE
Text Label 3350 8600 0    50   ~ 0
D0
Text Label 3350 8300 0    50   ~ 0
STM32_BUSEN
Text Label 3350 8700 0    50   ~ 0
D1
Text Label 3350 8800 0    50   ~ 0
D2
Text Label 3350 8900 0    50   ~ 0
D3
Text Label 3350 9000 0    50   ~ 0
D7
Text Label 3350 8400 0    50   ~ 0
IMA
Text Label 3350 8500 0    50   ~ 0
OE245
Text Label 5800 8000 0    50   ~ 0
NCERAM
Text Label 3350 9500 0    50   ~ 0
ROMADR1
Text Label 3350 9400 0    50   ~ 0
NCEROM
Text Label 3350 9300 0    50   ~ 0
ROMADR0
Text Label 3350 9200 0    50   ~ 0
ROMADR2
Text Label 3350 9100 0    50   ~ 0
ROMADR3
Text Label 3350 9900 0    50   ~ 0
TMS
Text Label 3350 10000 0    50   ~ 0
TDI
Text Label 3350 10100 0    50   ~ 0
TCK
Text Label 3350 10200 0    50   ~ 0
TDO
Text Label 5750 8200 0    50   ~ 0
A19
Text Label 5750 8300 0    50   ~ 0
A20
Text Label 5750 8400 0    50   ~ 0
A21
Text Label 5750 8500 0    50   ~ 0
A22
Text Label 5750 8100 0    50   ~ 0
A18
Text Label 5750 8600 0    50   ~ 0
DIPSW0
Text Label 5750 8700 0    50   ~ 0
DIPSW1
Text Label 5750 8800 0    50   ~ 0
DIPSW2
Text Label 5750 8900 0    50   ~ 0
DIPSW3
Text Label 5750 9000 0    50   ~ 0
DIPSW4
Text Label 5750 9100 0    50   ~ 0
DIPSW5
Text Label 5750 9200 0    50   ~ 0
FLASH_RY
Text Label 5750 9300 0    50   ~ 0
NAS
Text Label 5750 9400 0    50   ~ 0
NPS
Text Label 3350 9700 0    50   ~ 0
RNW
NoConn ~ 1450 5500
NoConn ~ 1450 5600
NoConn ~ 1450 6300
NoConn ~ 1450 6200
$Comp
L IPCMemoryExpansionBoard-rescue:74LS38-74xx U11
U 1 1 606B831C
P 2650 6700
F 0 "U11" H 2650 6383 50  0000 C CNN
F 1 "74LS38" H 2650 6474 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2650 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS38" H 2650 6700 50  0001 C CNN
	1    2650 6700
	-1   0    0    1   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:74LS38-74xx U11
U 2 1 606B8392
P 2650 6150
F 0 "U11" H 2650 5833 50  0000 C CNN
F 1 "74LS38" H 2650 5924 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2650 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS38" H 2650 6150 50  0001 C CNN
	2    2650 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 6400 2200 6150
Wire Wire Line
	2200 6150 2350 6150
Wire Wire Line
	2200 6500 2200 6700
Wire Wire Line
	2200 6700 2350 6700
Wire Wire Line
	2950 6600 2950 6800
Wire Wire Line
	2950 6250 2950 6050
Wire Wire Line
	2950 6250 3300 6250
Connection ~ 2950 6250
Wire Wire Line
	2950 6800 3300 6800
Connection ~ 2950 6800
Text Label 3050 6250 0    50   ~ 0
DTACK
Text Label 3050 6800 0    50   ~ 0
IMA
Wire Wire Line
	1450 1400 2000 1400
Wire Wire Line
	1450 1500 2000 1500
Wire Wire Line
	5200 1100 6000 1100
Wire Wire Line
	5200 1200 6000 1200
Wire Wire Line
	5200 1300 6000 1300
Wire Wire Line
	1450 1700 2000 1700
Wire Wire Line
	5200 1400 6000 1400
Wire Wire Line
	1450 1600 2000 1600
Wire Wire Line
	6000 1500 5200 1500
Wire Wire Line
	1450 1900 2000 1900
Wire Wire Line
	5200 1600 6000 1600
Wire Wire Line
	1450 1800 2000 1800
Wire Wire Line
	6000 1700 5200 1700
Wire Wire Line
	1450 2100 2000 2100
Wire Wire Line
	5200 1000 6000 1000
Wire Wire Line
	2100 2400 2100 3700
Connection ~ 2100 3700
Wire Wire Line
	1450 3100 2000 3100
Wire Wire Line
	1450 3200 2000 3200
Wire Wire Line
	1450 3300 2000 3300
Wire Wire Line
	1450 3400 2000 3400
Wire Wire Line
	1450 3500 2000 3500
Wire Wire Line
	1450 3600 2000 3600
Wire Wire Line
	5500 2350 6000 2350
Wire Wire Line
	1450 2000 2000 2000
Wire Wire Line
	6000 2450 5500 2450
Wire Wire Line
	1450 2200 2000 2200
Wire Wire Line
	5500 2550 6000 2550
Wire Wire Line
	6000 2650 5500 2650
Wire Wire Line
	1450 2500 2000 2500
Wire Wire Line
	5500 2750 6000 2750
Wire Wire Line
	1450 2600 2000 2600
Wire Wire Line
	6000 2850 5500 2850
Wire Wire Line
	1450 2700 2000 2700
Wire Wire Line
	5500 2950 6000 2950
Wire Wire Line
	1450 2800 2000 2800
Wire Wire Line
	6000 3050 5500 3050
Wire Wire Line
	1450 2900 2000 2900
Wire Wire Line
	5650 3700 6000 3700
Wire Wire Line
	1450 3000 2000 3000
Wire Wire Line
	6000 3800 5650 3800
Wire Wire Line
	6000 3900 5650 3900
Wire Wire Line
	6000 4100 5650 4100
Wire Wire Line
	6000 4200 5650 4200
Wire Wire Line
	6000 4300 5650 4300
Wire Wire Line
	5650 4400 6000 4400
Wire Wire Line
	7350 5150 7250 5150
Wire Wire Line
	7350 5350 6950 5350
Wire Wire Line
	7350 5450 6950 5450
Wire Wire Line
	7350 5550 6950 5550
Wire Wire Line
	7350 5650 6950 5650
Wire Wire Line
	7350 5750 6950 5750
Wire Wire Line
	7350 5850 6950 5850
Wire Wire Line
	7350 5950 6950 5950
Wire Wire Line
	7350 6050 6950 6050
Wire Wire Line
	1450 6500 2200 6500
Wire Wire Line
	7350 6650 6950 6650
Wire Wire Line
	7350 6750 6950 6750
Wire Wire Line
	7350 6850 6950 6850
Wire Wire Line
	7350 6950 6950 6950
Wire Wire Line
	7350 7050 6950 7050
Wire Wire Line
	7350 7150 6950 7150
Wire Wire Line
	7350 7250 6950 7250
Wire Wire Line
	7350 7350 6950 7350
Text Label 7000 5350 0    50   ~ 0
RD0
Text Label 7000 5450 0    50   ~ 0
RD1
Text Label 7000 5550 0    50   ~ 0
RD2
Text Label 7000 5650 0    50   ~ 0
RD3
Text Label 7000 5750 0    50   ~ 0
RD4
Text Label 7000 5850 0    50   ~ 0
RD5
Text Label 7000 5950 0    50   ~ 0
RD6
Text Label 7000 6050 0    50   ~ 0
RD7
Text Label 7000 6650 0    50   ~ 0
RD8
Text Label 7000 6750 0    50   ~ 0
RD9
Text Label 7000 6850 0    50   ~ 0
RD10
Text Label 7000 6950 0    50   ~ 0
RD11
Text Label 7000 7050 0    50   ~ 0
RD12
Text Label 7000 7150 0    50   ~ 0
RD13
Text Label 7000 7250 0    50   ~ 0
RD14
Text Label 7000 7350 0    50   ~ 0
RD15
$Comp
L IPCMemoryExpansionBoard-rescue:74LVC245-tinkerforge U10
U 1 1 608AB467
P 2050 8550
F 0 "U10" H 2050 9247 60  0000 C CNN
F 1 "74LVC245" H 2050 9141 60  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 2050 8550 60  0001 C CNN
F 3 "" H 2050 8550 60  0000 C CNN
	1    2050 8550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1700 8300 1300 8300
Wire Wire Line
	1700 8400 1300 8400
Wire Wire Line
	1700 8500 1300 8500
Wire Wire Line
	1700 8600 1300 8600
Wire Wire Line
	2400 8200 2800 8200
Wire Wire Line
	2400 8300 2800 8300
Wire Wire Line
	2400 8400 2800 8400
Wire Wire Line
	2400 8500 2800 8500
Text Label 1350 8600 0    50   ~ 0
NBLD
Text Label 1350 8700 0    50   ~ 0
NBUD
Text Label 1350 8300 0    50   ~ 0
BRNW
Text Label 1350 8400 0    50   ~ 0
BNPS
Text Label 2500 8500 0    50   ~ 0
NLD
Text Label 2500 8600 0    50   ~ 0
NUD
Text Label 2500 8200 0    50   ~ 0
RNW
Text Label 2500 8300 0    50   ~ 0
NPS
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0103
U 1 1 609732BE
P 2700 9150
F 0 "#PWR0103" H 2700 8900 50  0001 C CNN
F 1 "GND" H 2705 8977 50  0000 C CNN
F 2 "" H 2700 9150 50  0001 C CNN
F 3 "" H 2700 9150 50  0001 C CNN
	1    2700 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 8100 2400 8100
Wire Wire Line
	2400 9000 2700 9000
Connection ~ 2700 9000
Wire Wire Line
	2700 9000 2700 8100
Wire Wire Line
	2700 9000 2700 9150
Wire Wire Line
	6700 3600 7000 3600
Wire Wire Line
	6700 3700 7000 3700
Wire Wire Line
	6700 3800 7000 3800
Wire Wire Line
	6700 3900 7000 3900
Wire Wire Line
	6700 4000 7000 4000
Wire Wire Line
	6700 4100 7000 4100
Wire Wire Line
	6700 4200 7000 4200
Wire Wire Line
	8050 5250 8350 5250
Wire Wire Line
	8050 5350 8350 5350
Wire Wire Line
	8050 5450 8350 5450
Wire Wire Line
	8050 5550 8350 5550
Wire Wire Line
	8050 5650 8350 5650
Wire Wire Line
	8050 5750 8350 5750
Wire Wire Line
	8050 5850 8350 5850
Wire Wire Line
	8050 5950 8350 5950
Wire Wire Line
	8050 6550 8350 6550
Wire Wire Line
	8050 6650 8350 6650
Wire Wire Line
	8050 6750 8350 6750
Wire Wire Line
	8050 6850 8350 6850
Wire Wire Line
	8050 6950 8350 6950
Wire Wire Line
	8050 7050 8350 7050
Wire Wire Line
	8050 7150 8350 7150
Wire Wire Line
	8050 7250 8350 7250
Text Label 8100 6550 0    50   ~ 0
D8
Text Label 8100 6650 0    50   ~ 0
D9
Text Label 8100 6750 0    50   ~ 0
D10
Text Label 8100 6850 0    50   ~ 0
D11
Text Label 8100 6950 0    50   ~ 0
D12
Text Label 8100 7050 0    50   ~ 0
D13
Text Label 8100 7150 0    50   ~ 0
D14
Text Label 8100 7250 0    50   ~ 0
D15
Text Label 8150 5250 0    50   ~ 0
D0
Text Label 8150 5350 0    50   ~ 0
D1
Text Label 8150 5450 0    50   ~ 0
D2
Text Label 8150 5550 0    50   ~ 0
D3
Text Label 8150 5650 0    50   ~ 0
D4
Text Label 8150 5750 0    50   ~ 0
D5
Text Label 8150 5850 0    50   ~ 0
D6
Text Label 8150 5950 0    50   ~ 0
D7
Wire Wire Line
	9300 5250 9600 5250
Wire Wire Line
	9300 5350 9600 5350
Wire Wire Line
	9300 5450 9600 5450
Wire Wire Line
	9300 5550 9600 5550
Wire Wire Line
	9300 5650 9600 5650
Wire Wire Line
	9300 5750 9600 5750
Wire Wire Line
	9300 5850 9600 5850
Wire Wire Line
	9300 5950 9600 5950
Text Label 9400 5950 0    50   ~ 0
D0
Text Label 9400 5850 0    50   ~ 0
D1
Text Label 9400 5750 0    50   ~ 0
D2
Text Label 9400 5650 0    50   ~ 0
D3
Text Label 9400 5550 0    50   ~ 0
D4
Text Label 9400 5450 0    50   ~ 0
D5
Text Label 9400 5350 0    50   ~ 0
D6
Text Label 9400 5250 0    50   ~ 0
D7
Wire Wire Line
	9300 4450 9600 4450
Wire Wire Line
	9300 4550 9600 4550
Wire Wire Line
	9300 4650 9600 4650
Wire Wire Line
	9300 4750 9600 4750
Wire Wire Line
	9300 4850 9600 4850
Wire Wire Line
	9300 4950 9600 4950
Wire Wire Line
	9300 5050 9600 5050
Wire Wire Line
	9300 5150 9600 5150
Text Label 9400 5150 0    50   ~ 0
D8
Text Label 9400 5050 0    50   ~ 0
D9
Text Label 9350 4950 0    50   ~ 0
D10
Text Label 9350 4850 0    50   ~ 0
D11
Text Label 9350 4750 0    50   ~ 0
D12
Text Label 9350 4650 0    50   ~ 0
D13
Text Label 9350 4550 0    50   ~ 0
D14
Text Label 9350 4450 0    50   ~ 0
D15
Wire Wire Line
	9350 950  9650 950 
Wire Wire Line
	9350 1050 9650 1050
Wire Wire Line
	9350 1150 9650 1150
Wire Wire Line
	9350 1250 9650 1250
Wire Wire Line
	9350 1350 9650 1350
Wire Wire Line
	9350 1450 9650 1450
Wire Wire Line
	9350 1550 9650 1550
Wire Wire Line
	9350 1650 9650 1650
Text Label 9450 950  0    50   ~ 0
D0
Text Label 9450 1050 0    50   ~ 0
D1
Text Label 9450 1150 0    50   ~ 0
D2
Text Label 9450 1250 0    50   ~ 0
D3
Text Label 9450 1350 0    50   ~ 0
D4
Text Label 9450 1450 0    50   ~ 0
D5
Text Label 9450 1550 0    50   ~ 0
D6
Text Label 9450 1650 0    50   ~ 0
D7
Wire Wire Line
	9350 1750 9650 1750
Wire Wire Line
	9350 1850 9650 1850
Wire Wire Line
	9350 1950 9650 1950
Wire Wire Line
	9350 2050 9650 2050
Wire Wire Line
	9350 2150 9650 2150
Wire Wire Line
	9350 2250 9650 2250
Wire Wire Line
	9350 2350 9650 2350
Wire Wire Line
	9350 2450 9650 2450
Text Label 9400 1750 0    50   ~ 0
D8
Text Label 9400 1850 0    50   ~ 0
D9
Text Label 9400 1950 0    50   ~ 0
D10
Text Label 9400 2050 0    50   ~ 0
D11
Text Label 9400 2150 0    50   ~ 0
D12
Text Label 9400 2250 0    50   ~ 0
D13
Text Label 9400 2350 0    50   ~ 0
D14
Text Label 9400 2450 0    50   ~ 0
D15
Wire Wire Line
	6700 2250 7000 2250
Wire Wire Line
	6700 2350 7000 2350
Wire Wire Line
	6700 2450 7000 2450
Wire Wire Line
	6700 2550 7000 2550
Wire Wire Line
	6700 2650 7000 2650
Wire Wire Line
	6700 2750 7000 2750
Wire Wire Line
	6700 2850 7000 2850
Wire Wire Line
	6700 2950 7000 2950
Wire Wire Line
	6700 900  7000 900 
Wire Wire Line
	6700 1000 7000 1000
Wire Wire Line
	6700 1100 7000 1100
Wire Wire Line
	6700 1200 7000 1200
Wire Wire Line
	6700 1300 7000 1300
Wire Wire Line
	6700 1400 7000 1400
Wire Wire Line
	6700 1500 7000 1500
Wire Wire Line
	6700 1600 7000 1600
Text Label 6800 900  0    50   ~ 0
A0
Text Label 6800 1000 0    50   ~ 0
A1
Text Label 6800 1100 0    50   ~ 0
A2
Text Label 6800 1200 0    50   ~ 0
A3
Text Label 6800 1300 0    50   ~ 0
A4
Text Label 6800 1400 0    50   ~ 0
A5
Text Label 6800 1500 0    50   ~ 0
A6
Text Label 6800 1600 0    50   ~ 0
A7
Text Label 6800 2250 0    50   ~ 0
A8
Text Label 6800 2350 0    50   ~ 0
A9
Text Label 6800 2450 0    50   ~ 0
A10
Text Label 6800 2550 0    50   ~ 0
A11
Text Label 6800 2650 0    50   ~ 0
A12
Text Label 6800 2750 0    50   ~ 0
A13
Text Label 6800 2850 0    50   ~ 0
A14
Text Label 6800 2950 0    50   ~ 0
A15
Text Label 6800 3600 0    50   ~ 0
A16
Text Label 6800 3700 0    50   ~ 0
A17
Text Label 6800 3800 0    50   ~ 0
A18
Text Label 6800 3900 0    50   ~ 0
A19
Text Label 6800 4000 0    50   ~ 0
A20
Text Label 6800 4100 0    50   ~ 0
A21
Text Label 6800 4200 0    50   ~ 0
A22
Wire Wire Line
	7850 950  8150 950 
Wire Wire Line
	7850 1050 8150 1050
Wire Wire Line
	7850 1150 8150 1150
Wire Wire Line
	7850 1250 8150 1250
Wire Wire Line
	7850 1350 8150 1350
Wire Wire Line
	7850 1450 8150 1450
Wire Wire Line
	7850 1550 8150 1550
Wire Wire Line
	7850 1650 8150 1650
Text Label 7950 950  0    50   ~ 0
A0
Text Label 7950 1050 0    50   ~ 0
A1
Text Label 7950 1150 0    50   ~ 0
A2
Text Label 7950 1250 0    50   ~ 0
A3
Text Label 7950 1350 0    50   ~ 0
A4
Text Label 7950 1450 0    50   ~ 0
A5
Text Label 7950 1550 0    50   ~ 0
A6
Text Label 7950 1650 0    50   ~ 0
A7
Wire Wire Line
	7850 1750 8150 1750
Wire Wire Line
	7850 1850 8150 1850
Wire Wire Line
	7850 1950 8150 1950
Wire Wire Line
	7850 2050 8150 2050
Wire Wire Line
	7850 2150 8150 2150
Wire Wire Line
	7850 2250 8150 2250
Wire Wire Line
	7850 2350 8150 2350
Wire Wire Line
	7850 2450 8150 2450
Text Label 7950 1750 0    50   ~ 0
A8
Text Label 7950 1850 0    50   ~ 0
A9
Text Label 7950 1950 0    50   ~ 0
A10
Text Label 7950 2050 0    50   ~ 0
A11
Text Label 7950 2150 0    50   ~ 0
A12
Text Label 7950 2250 0    50   ~ 0
A13
Text Label 7950 2350 0    50   ~ 0
A14
Text Label 7950 2450 0    50   ~ 0
A15
Wire Wire Line
	7850 2550 8150 2550
Wire Wire Line
	7850 2650 8150 2650
Wire Wire Line
	7750 2750 8150 2750
Wire Wire Line
	7750 2850 8150 2850
Wire Wire Line
	7750 2950 8150 2950
Text Label 7950 2550 0    50   ~ 0
A16
Text Label 7950 2650 0    50   ~ 0
A17
Text Label 7750 2750 0    50   ~ 0
ROMADR0
Text Label 7750 2850 0    50   ~ 0
ROMADR1
Text Label 7750 2950 0    50   ~ 0
ROMADR2
Wire Wire Line
	10800 4850 11100 4850
Wire Wire Line
	10800 4950 11100 4950
Wire Wire Line
	10800 5050 11100 5050
Wire Wire Line
	10800 5150 11100 5150
Wire Wire Line
	10800 5250 11100 5250
Text Label 10900 6550 0    50   ~ 0
A0
Text Label 10900 6450 0    50   ~ 0
A1
Text Label 10900 6350 0    50   ~ 0
A2
Text Label 10900 6250 0    50   ~ 0
A3
Text Label 10900 6150 0    50   ~ 0
A4
Text Label 10900 6050 0    50   ~ 0
A5
Text Label 10900 5950 0    50   ~ 0
A6
Text Label 10900 5850 0    50   ~ 0
A7
Wire Wire Line
	10800 5350 11100 5350
Wire Wire Line
	10800 5450 11100 5450
Wire Wire Line
	10800 5550 11100 5550
Wire Wire Line
	10800 5650 11100 5650
Wire Wire Line
	10800 5750 11100 5750
Wire Wire Line
	10800 5850 11100 5850
Wire Wire Line
	10800 5950 11100 5950
Wire Wire Line
	10800 6050 11100 6050
Text Label 10900 5750 0    50   ~ 0
A8
Text Label 10900 5650 0    50   ~ 0
A9
Text Label 10900 5550 0    50   ~ 0
A10
Text Label 10900 5450 0    50   ~ 0
A11
Text Label 10900 5350 0    50   ~ 0
A12
Text Label 10900 5250 0    50   ~ 0
A13
Text Label 10900 5150 0    50   ~ 0
A14
Text Label 10900 5050 0    50   ~ 0
A15
Wire Wire Line
	10800 6150 11100 6150
Wire Wire Line
	10800 6250 11100 6250
Wire Wire Line
	10800 6350 11100 6350
Wire Wire Line
	10800 6450 11100 6450
Wire Wire Line
	10800 6550 11100 6550
Text Label 10900 4950 0    50   ~ 0
A16
Text Label 10900 4850 0    50   ~ 0
A17
Wire Wire Line
	9600 6150 9300 6150
Wire Wire Line
	9600 6250 9300 6250
Wire Wire Line
	9600 6350 9300 6350
Wire Wire Line
	9600 6550 9300 6550
Wire Wire Line
	9600 6650 9300 6650
Text Label 9400 6150 0    50   ~ 0
NOE
Text Label 9400 6250 0    50   ~ 0
NWE
Text Label 9300 6350 0    50   ~ 0
NCERAM
Text Label 9350 6650 0    50   ~ 0
NLD
Text Label 9350 6550 0    50   ~ 0
NUD
Text Label 7000 5250 0    50   ~ 0
OE245
Wire Wire Line
	8150 3050 7750 3050
Text Label 7750 3050 0    50   ~ 0
ROMADR3
Wire Wire Line
	8150 3250 7750 3250
Wire Wire Line
	8150 3450 7750 3450
Wire Wire Line
	8150 3550 7750 3550
Wire Wire Line
	8150 3650 7750 3650
Wire Wire Line
	8150 3750 7750 3750
Text Label 6750 4300 0    50   ~ 0
NRESET
Text Label 7750 3250 0    50   ~ 0
NRESET
Text Label 7750 3450 0    50   ~ 0
NOE
Text Label 7750 3750 0    50   ~ 0
NCEROM
Text Label 7750 3650 0    50   ~ 0
NWE
Text Label 7750 3550 0    50   ~ 0
FLASH_RY
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0106
U 1 1 60D8A499
P 10200 4000
F 0 "#PWR0106" H 10200 3850 50  0001 C CNN
F 1 "+3.3V" H 10215 4173 50  0000 C CNN
F 2 "" H 10200 4000 50  0001 C CNN
F 3 "" H 10200 4000 50  0001 C CNN
	1    10200 4000
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C5
U 1 1 60D8A607
P 10900 4100
F 0 "C5" H 10992 4146 50  0000 L CNN
F 1 "100n" H 10992 4055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10900 4100 50  0001 C CNN
F 3 "~" H 10900 4100 50  0001 C CNN
	1    10900 4100
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0109
U 1 1 60D8A76E
P 10900 4200
F 0 "#PWR0109" H 10900 3950 50  0001 C CNN
F 1 "GND" H 10750 4150 50  0000 C CNN
F 2 "" H 10900 4200 50  0001 C CNN
F 3 "" H 10900 4200 50  0001 C CNN
	1    10900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 4000 10200 4000
Wire Wire Line
	10200 4150 10200 4000
Connection ~ 10200 4000
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0110
U 1 1 60DCF6F7
P 9050 6300
F 0 "#PWR0110" H 9050 6150 50  0001 C CNN
F 1 "+3.3V" H 9065 6473 50  0000 C CNN
F 2 "" H 9050 6300 50  0001 C CNN
F 3 "" H 9050 6300 50  0001 C CNN
	1    9050 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 6450 9050 6300
Wire Wire Line
	9050 6450 9600 6450
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0111
U 1 1 60DF258F
P 11350 6450
F 0 "#PWR0111" H 11350 6300 50  0001 C CNN
F 1 "+3.3V" H 11365 6623 50  0000 C CNN
F 2 "" H 11350 6450 50  0001 C CNN
F 3 "" H 11350 6450 50  0001 C CNN
	1    11350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 6650 11350 6650
Wire Wire Line
	11350 6650 11350 6450
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0112
U 1 1 60E15339
P 10200 7050
F 0 "#PWR0112" H 10200 6800 50  0001 C CNN
F 1 "GND" H 10205 6877 50  0000 C CNN
F 2 "" H 10200 7050 50  0001 C CNN
F 3 "" H 10200 7050 50  0001 C CNN
	1    10200 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 7050 10200 6950
Wire Wire Line
	10100 6950 10200 6950
Connection ~ 10200 6950
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0113
U 1 1 60E5B279
P 9000 4150
F 0 "#PWR0113" H 9000 3900 50  0001 C CNN
F 1 "GND" H 9005 3977 50  0000 C CNN
F 2 "" H 9000 4150 50  0001 C CNN
F 3 "" H 9000 4150 50  0001 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4150 9000 4100
Wire Wire Line
	9000 4100 8850 4100
Connection ~ 8850 4100
Wire Wire Line
	8850 4100 8750 4100
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0114
U 1 1 60E7E7C4
P 10000 700
F 0 "#PWR0114" H 10000 550 50  0001 C CNN
F 1 "+3.3V" H 10015 873 50  0000 C CNN
F 2 "" H 10000 700 50  0001 C CNN
F 3 "" H 10000 700 50  0001 C CNN
	1    10000 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 700  8750 700 
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C7
U 1 1 60EA24F2
P 10000 800
F 0 "C7" H 10092 846 50  0000 L CNN
F 1 "100n" H 10092 755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 10000 800 50  0001 C CNN
F 3 "~" H 10000 800 50  0001 C CNN
	1    10000 800 
	1    0    0    -1  
$EndComp
Connection ~ 10000 700 
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0115
U 1 1 60EA2568
P 10000 900
F 0 "#PWR0115" H 10000 650 50  0001 C CNN
F 1 "GND" H 10005 727 50  0000 C CNN
F 2 "" H 10000 900 50  0001 C CNN
F 3 "" H 10000 900 50  0001 C CNN
	1    10000 900 
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0116
U 1 1 60EA25C9
P 7500 3200
F 0 "#PWR0116" H 7500 3050 50  0001 C CNN
F 1 "+3.3V" H 7515 3373 50  0000 C CNN
F 2 "" H 7500 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3350 7500 3350
Wire Wire Line
	7500 3350 7500 3200
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0117
U 1 1 60EC679F
P 6750 1750
F 0 "#PWR0117" H 6750 1500 50  0001 C CNN
F 1 "GND" H 6755 1577 50  0000 C CNN
F 2 "" H 6750 1750 50  0001 C CNN
F 3 "" H 6750 1750 50  0001 C CNN
	1    6750 1750
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0118
U 1 1 60EC67DD
P 6750 3100
F 0 "#PWR0118" H 6750 2850 50  0001 C CNN
F 1 "GND" H 6755 2927 50  0000 C CNN
F 2 "" H 6750 3100 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1700 6750 1700
Wire Wire Line
	6750 1700 6750 1750
Wire Wire Line
	6700 3050 6750 3050
Wire Wire Line
	6750 3050 6750 3100
Wire Wire Line
	6750 1700 6750 800 
Wire Wire Line
	6750 800  6700 800 
Connection ~ 6750 1700
Wire Wire Line
	6750 3050 6750 2150
Wire Wire Line
	6750 2150 6700 2150
Connection ~ 6750 3050
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0119
U 1 1 60F5A6E8
P 5900 700
F 0 "#PWR0119" H 5900 550 50  0001 C CNN
F 1 "+3.3V" H 5915 873 50  0000 C CNN
F 2 "" H 5900 700 50  0001 C CNN
F 3 "" H 5900 700 50  0001 C CNN
	1    5900 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 800  5900 800 
Wire Wire Line
	5900 800  5900 700 
Wire Wire Line
	6000 2150 5900 2150
Wire Wire Line
	5900 2150 5900 800 
Connection ~ 5900 800 
Wire Wire Line
	6000 2250 5800 2250
Wire Wire Line
	5800 2250 5800 900 
Wire Wire Line
	5800 900  6000 900 
Wire Wire Line
	5800 900  5200 900 
Connection ~ 5800 900 
Wire Wire Line
	5900 2150 5900 3500
Wire Wire Line
	5900 3500 6000 3500
Connection ~ 5900 2150
Wire Wire Line
	6000 3600 5800 3600
Wire Wire Line
	5800 3600 5800 2250
Connection ~ 5800 2250
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0120
U 1 1 61044D61
P 7150 4450
F 0 "#PWR0120" H 7150 4200 50  0001 C CNN
F 1 "GND" H 7155 4277 50  0000 C CNN
F 2 "" H 7150 4450 50  0001 C CNN
F 3 "" H 7150 4450 50  0001 C CNN
	1    7150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3500 7150 3500
Wire Wire Line
	7150 3500 7150 4400
Connection ~ 7150 4400
Wire Wire Line
	6700 4400 7150 4400
Wire Wire Line
	7150 4400 7150 4450
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C2
U 1 1 61096C8E
P 6800 8150
F 0 "C2" H 6892 8196 50  0000 L CNN
F 1 "100n" H 6892 8105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6800 8150 50  0001 C CNN
F 3 "~" H 6800 8150 50  0001 C CNN
	1    6800 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C3
U 1 1 61097160
P 7150 8150
F 0 "C3" H 7242 8196 50  0000 L CNN
F 1 "100n" H 7242 8105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7150 8150 50  0001 C CNN
F 3 "~" H 7150 8150 50  0001 C CNN
	1    7150 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C6
U 1 1 610971A4
P 7500 8150
F 0 "C6" H 7592 8196 50  0000 L CNN
F 1 "100n" H 7592 8105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7500 8150 50  0001 C CNN
F 3 "~" H 7500 8150 50  0001 C CNN
	1    7500 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C8
U 1 1 610971E6
P 5800 10250
F 0 "C8" H 5892 10296 50  0000 L CNN
F 1 "100n" H 5892 10205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5800 10250 50  0001 C CNN
F 3 "~" H 5800 10250 50  0001 C CNN
	1    5800 10250
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C9
U 1 1 61097228
P 8200 8150
F 0 "C9" H 8292 8196 50  0000 L CNN
F 1 "100n" H 8292 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8200 8150 50  0001 C CNN
F 3 "~" H 8200 8150 50  0001 C CNN
	1    8200 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C11
U 1 1 61097270
P 7850 8150
F 0 "C11" H 7942 8196 50  0000 L CNN
F 1 "100n" H 7942 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7850 8150 50  0001 C CNN
F 3 "~" H 7850 8150 50  0001 C CNN
	1    7850 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C12
U 1 1 610972CF
P 8800 8150
F 0 "C12" H 8892 8196 50  0000 L CNN
F 1 "100n" H 8892 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8800 8150 50  0001 C CNN
F 3 "~" H 8800 8150 50  0001 C CNN
	1    8800 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C13
U 1 1 61097317
P 9150 8150
F 0 "C13" H 9242 8196 50  0000 L CNN
F 1 "100n" H 9242 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9150 8150 50  0001 C CNN
F 3 "~" H 9150 8150 50  0001 C CNN
	1    9150 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C1
U 1 1 61097365
P 6450 8150
F 0 "C1" H 6542 8196 50  0000 L CNN
F 1 "100n" H 6542 8105 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6450 8150 50  0001 C CNN
F 3 "~" H 6450 8150 50  0001 C CNN
	1    6450 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C14
U 1 1 610973B5
P 9450 8150
F 0 "C14" H 9542 8196 50  0000 L CNN
F 1 "100n" H 9542 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9450 8150 50  0001 C CNN
F 3 "~" H 9450 8150 50  0001 C CNN
	1    9450 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 8050 6800 8050
Connection ~ 6800 8050
Wire Wire Line
	6800 8050 7150 8050
Connection ~ 7150 8050
Wire Wire Line
	7150 8050 7500 8050
Connection ~ 7500 8050
Wire Wire Line
	7500 8050 7850 8050
Connection ~ 7850 8050
Wire Wire Line
	7850 8050 8200 8050
Connection ~ 8200 8050
Connection ~ 8800 8050
Wire Wire Line
	8800 8050 9150 8050
Connection ~ 9150 8050
Wire Wire Line
	9150 8050 9450 8050
Wire Wire Line
	6450 8250 6800 8250
Connection ~ 6800 8250
Wire Wire Line
	6800 8250 7150 8250
Connection ~ 7150 8250
Wire Wire Line
	7150 8250 7500 8250
Connection ~ 7500 8250
Wire Wire Line
	7500 8250 7850 8250
Connection ~ 7850 8250
Wire Wire Line
	7850 8250 8200 8250
Wire Wire Line
	8800 8250 9150 8250
Connection ~ 9150 8250
Wire Wire Line
	9150 8250 9450 8250
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0121
U 1 1 610EC444
P 7850 8250
F 0 "#PWR0121" H 7850 8000 50  0001 C CNN
F 1 "GND" H 7855 8077 50  0000 C CNN
F 2 "" H 7850 8250 50  0001 C CNN
F 3 "" H 7850 8250 50  0001 C CNN
	1    7850 8250
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0122
U 1 1 610EC485
P 7850 8050
F 0 "#PWR0122" H 7850 7900 50  0001 C CNN
F 1 "+3.3V" H 7865 8223 50  0000 C CNN
F 2 "" H 7850 8050 50  0001 C CNN
F 3 "" H 7850 8050 50  0001 C CNN
	1    7850 8050
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0123
U 1 1 610EC65D
P 4650 10650
F 0 "#PWR0123" H 4650 10400 50  0001 C CNN
F 1 "GND" H 4655 10477 50  0000 C CNN
F 2 "" H 4650 10650 50  0001 C CNN
F 3 "" H 4650 10650 50  0001 C CNN
	1    4650 10650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 10650 4650 10550
Wire Wire Line
	4650 10550 4750 10550
Wire Wire Line
	4750 10550 4750 10450
Connection ~ 4650 10550
Wire Wire Line
	4650 10550 4650 10450
Wire Wire Line
	4750 10550 4950 10550
Wire Wire Line
	4950 10550 4950 10450
Connection ~ 4750 10550
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0124
U 1 1 61175EBD
P 4900 7400
F 0 "#PWR0124" H 4900 7250 50  0001 C CNN
F 1 "+3.3V" H 4915 7573 50  0000 C CNN
F 2 "" H 4900 7400 50  0001 C CNN
F 3 "" H 4900 7400 50  0001 C CNN
	1    4900 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7550 4900 7450
Wire Wire Line
	4900 7450 4800 7450
Wire Wire Line
	4800 7450 4800 7550
Connection ~ 4900 7450
Wire Wire Line
	4900 7450 4900 7400
Wire Wire Line
	4800 7450 4700 7450
Wire Wire Line
	4700 7450 4700 7550
Connection ~ 4800 7450
Wire Wire Line
	4700 7450 4600 7450
Wire Wire Line
	4600 7450 4600 7550
Connection ~ 4700 7450
NoConn ~ 2400 8900
NoConn ~ 2400 8800
NoConn ~ 2400 8700
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0125
U 1 1 613AD9B1
P 8100 7450
F 0 "#PWR0125" H 8100 7200 50  0001 C CNN
F 1 "GND" H 8105 7277 50  0000 C CNN
F 2 "" H 8100 7450 50  0001 C CNN
F 3 "" H 8100 7450 50  0001 C CNN
	1    8100 7450
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0127
U 1 1 6150366B
P 8550 6100
F 0 "#PWR0127" H 8550 5850 50  0001 C CNN
F 1 "GND" H 8555 5927 50  0000 C CNN
F 2 "" H 8550 6100 50  0001 C CNN
F 3 "" H 8550 6100 50  0001 C CNN
	1    8550 6100
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0128
U 1 1 61534ACF
P 7250 5000
F 0 "#PWR0128" H 7250 4850 50  0001 C CNN
F 1 "+3.3V" H 7265 5173 50  0000 C CNN
F 2 "" H 7250 5000 50  0001 C CNN
F 3 "" H 7250 5000 50  0001 C CNN
	1    7250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 5150 7250 5000
Text Label 8400 5150 0    50   ~ 0
RNW
$Comp
L IPCMemoryExpansionBoard-rescue:SW_DIP_x08-Switch SW1
U 1 1 61598D25
P 7150 9450
F 0 "SW1" H 7150 10117 50  0000 C CNN
F 1 "CONFIG SWITCH" H 7150 10026 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 7150 9450 50  0001 C CNN
F 3 "" H 7150 9450 50  0001 C CNN
	1    7150 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 9050 6750 9050
Wire Wire Line
	6750 9050 6750 9150
Wire Wire Line
	6850 9750 6750 9750
Connection ~ 6750 9750
Wire Wire Line
	6750 9750 6750 9850
Wire Wire Line
	6850 9650 6750 9650
Connection ~ 6750 9650
Wire Wire Line
	6750 9650 6750 9750
Wire Wire Line
	6850 9550 6750 9550
Connection ~ 6750 9550
Wire Wire Line
	6750 9550 6750 9650
Wire Wire Line
	6850 9450 6750 9450
Connection ~ 6750 9450
Wire Wire Line
	6750 9450 6750 9550
Wire Wire Line
	6850 9350 6750 9350
Connection ~ 6750 9350
Wire Wire Line
	6750 9350 6750 9450
Wire Wire Line
	6850 9250 6750 9250
Connection ~ 6750 9250
Wire Wire Line
	6750 9250 6750 9350
Wire Wire Line
	6850 9150 6750 9150
Connection ~ 6750 9150
Wire Wire Line
	6750 9150 6750 9250
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0129
U 1 1 61734024
P 6750 9850
F 0 "#PWR0129" H 6750 9600 50  0001 C CNN
F 1 "GND" H 6755 9677 50  0000 C CNN
F 2 "" H 6750 9850 50  0001 C CNN
F 3 "" H 6750 9850 50  0001 C CNN
	1    6750 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 9050 7800 9050
Wire Wire Line
	7450 9150 7800 9150
Wire Wire Line
	7450 9250 7800 9250
Wire Wire Line
	7450 9350 7800 9350
Wire Wire Line
	7450 9450 7800 9450
Wire Wire Line
	7450 9550 7800 9550
Wire Wire Line
	7450 9650 7800 9650
Wire Wire Line
	7450 9750 7800 9750
Text Label 7500 9050 0    50   ~ 0
DIPSW0
Text Label 7500 9150 0    50   ~ 0
DIPSW1
Text Label 7500 9250 0    50   ~ 0
DIPSW2
Text Label 7500 9350 0    50   ~ 0
DIPSW3
Text Label 7500 9450 0    50   ~ 0
DIPSW4
Text Label 7500 9550 0    50   ~ 0
DIPSW5
$Comp
L IPCMemoryExpansionBoard-rescue:AMS1117-3.3-Regulator_Linear U13
U 1 1 618E4124
P 8650 10300
F 0 "U13" H 8650 10542 50  0000 C CNN
F 1 "AMS1117-3.3" H 8650 10451 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8650 10500 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 8750 10050 50  0001 C CNN
	1    8650 10300
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:CP_Small-Device C10
U 1 1 618E42A5
P 9150 10450
F 0 "C10" H 9238 10496 50  0000 L CNN
F 1 "100u" H 9238 10405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9150 10450 50  0001 C CNN
F 3 "~" H 9150 10450 50  0001 C CNN
	1    9150 10450
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:CP_Small-Device C4
U 1 1 618E4319
P 7950 10450
F 0 "C4" H 8038 10496 50  0000 L CNN
F 1 "100u" H 8038 10405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7950 10450 50  0001 C CNN
F 3 "~" H 7950 10450 50  0001 C CNN
	1    7950 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 10300 7950 10300
Wire Wire Line
	7950 10300 7950 10350
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR02
U 1 1 6191B9BB
P 7950 10600
F 0 "#PWR02" H 7950 10350 50  0001 C CNN
F 1 "GND" H 7955 10427 50  0000 C CNN
F 2 "" H 7950 10600 50  0001 C CNN
F 3 "" H 7950 10600 50  0001 C CNN
	1    7950 10600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR03
U 1 1 6191BA04
P 8650 10650
F 0 "#PWR03" H 8650 10400 50  0001 C CNN
F 1 "GND" H 8655 10477 50  0000 C CNN
F 2 "" H 8650 10650 50  0001 C CNN
F 3 "" H 8650 10650 50  0001 C CNN
	1    8650 10650
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR05
U 1 1 6191BA4D
P 9150 10600
F 0 "#PWR05" H 9150 10350 50  0001 C CNN
F 1 "GND" H 9155 10427 50  0000 C CNN
F 2 "" H 9150 10600 50  0001 C CNN
F 3 "" H 9150 10600 50  0001 C CNN
	1    9150 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 10350 9150 10300
Wire Wire Line
	9150 10300 8950 10300
Wire Wire Line
	9150 10600 9150 10550
Wire Wire Line
	8650 10650 8650 10600
Wire Wire Line
	7950 10600 7950 10550
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR01
U 1 1 619FA95B
P 7950 10300
F 0 "#PWR01" H 7950 10150 50  0001 C CNN
F 1 "+5V" H 7965 10473 50  0000 C CNN
F 2 "" H 7950 10300 50  0001 C CNN
F 3 "" H 7950 10300 50  0001 C CNN
	1    7950 10300
	1    0    0    -1  
$EndComp
Connection ~ 7950 10300
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR04
U 1 1 619FAABB
P 9150 10300
F 0 "#PWR04" H 9150 10150 50  0001 C CNN
F 1 "+3.3V" H 9165 10473 50  0000 C CNN
F 2 "" H 9150 10300 50  0001 C CNN
F 3 "" H 9150 10300 50  0001 C CNN
	1    9150 10300
	1    0    0    -1  
$EndComp
Connection ~ 9150 10300
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0130
U 1 1 61A32FCE
P 1600 8000
F 0 "#PWR0130" H 1600 7850 50  0001 C CNN
F 1 "+3.3V" H 1615 8173 50  0000 C CNN
F 2 "" H 1600 8000 50  0001 C CNN
F 3 "" H 1600 8000 50  0001 C CNN
	1    1600 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 8100 1600 8100
Wire Wire Line
	1600 8100 1600 8000
Wire Wire Line
	1450 7300 2100 7300
NoConn ~ 1450 6600
NoConn ~ 1450 6700
NoConn ~ 1450 6800
NoConn ~ 1450 6900
NoConn ~ 1450 7200
NoConn ~ 1450 1100
$Comp
L IPCMemoryExpansionBoard-rescue:Conn_02x07_Odd_Even-Connector_Generic J4
U 1 1 61BFBDDB
P 1850 10050
F 0 "J4" H 1900 10567 50  0000 C CNN
F 1 "JTAG" H 1900 10476 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x07_P2.54mm_Horizontal" H 1850 10050 50  0001 C CNN
F 3 "~" H 1850 10050 50  0001 C CNN
	1    1850 10050
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0131
U 1 1 61BFBEEF
P 1550 10450
F 0 "#PWR0131" H 1550 10200 50  0001 C CNN
F 1 "GND" H 1555 10277 50  0000 C CNN
F 2 "" H 1550 10450 50  0001 C CNN
F 3 "" H 1550 10450 50  0001 C CNN
	1    1550 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 9750 1550 9750
Wire Wire Line
	1550 9750 1550 9850
Wire Wire Line
	1650 10350 1550 10350
Connection ~ 1550 10350
Wire Wire Line
	1550 10350 1550 10450
Wire Wire Line
	1650 10250 1550 10250
Connection ~ 1550 10250
Wire Wire Line
	1550 10250 1550 10350
Wire Wire Line
	1650 10150 1550 10150
Connection ~ 1550 10150
Wire Wire Line
	1550 10150 1550 10250
Wire Wire Line
	1650 10050 1550 10050
Connection ~ 1550 10050
Wire Wire Line
	1550 10050 1550 10150
Wire Wire Line
	1650 9950 1550 9950
Connection ~ 1550 9950
Wire Wire Line
	1550 9950 1550 10050
Wire Wire Line
	1650 9850 1550 9850
Connection ~ 1550 9850
Wire Wire Line
	1550 9850 1550 9950
Wire Wire Line
	2150 9850 2500 9850
Wire Wire Line
	2150 9950 2500 9950
Wire Wire Line
	2150 10050 2500 10050
Wire Wire Line
	2150 10150 2500 10150
NoConn ~ 2150 10250
NoConn ~ 2150 10350
Wire Wire Line
	2150 9750 2500 9750
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0132
U 1 1 61F56D28
P 2500 9750
F 0 "#PWR0132" H 2500 9600 50  0001 C CNN
F 1 "+3.3V" H 2515 9923 50  0000 C CNN
F 2 "" H 2500 9750 50  0001 C CNN
F 3 "" H 2500 9750 50  0001 C CNN
	1    2500 9750
	1    0    0    -1  
$EndComp
Text Label 2350 9850 0    50   ~ 0
TMS
Text Label 2350 9950 0    50   ~ 0
TCK
Text Label 2350 10150 0    50   ~ 0
TDI
Text Label 2350 10050 0    50   ~ 0
TDO
Wire Wire Line
	10200 10350 10500 10350
Wire Wire Line
	10200 10450 10500 10450
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR06
U 1 1 6237B8E1
P 9800 10850
F 0 "#PWR06" H 9800 10600 50  0001 C CNN
F 1 "GND" H 9805 10677 50  0000 C CNN
F 2 "" H 9800 10850 50  0001 C CNN
F 3 "" H 9800 10850 50  0001 C CNN
	1    9800 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 10850 9800 10800
Wire Wire Line
	9800 10800 9900 10800
Wire Wire Line
	9900 10800 9900 10750
Connection ~ 9800 10800
Wire Wire Line
	9800 10800 9800 10750
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR07
U 1 1 624041E5
P 10600 10100
F 0 "#PWR07" H 10600 9950 50  0001 C CNN
F 1 "+5V" H 10615 10273 50  0000 C CNN
F 2 "" H 10600 10100 50  0001 C CNN
F 3 "" H 10600 10100 50  0001 C CNN
	1    10600 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 10150 10600 10100
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C15
U 1 1 6248E320
P 9800 8150
F 0 "C15" H 9892 8196 50  0000 L CNN
F 1 "100n" H 9892 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9800 8150 50  0001 C CNN
F 3 "~" H 9800 8150 50  0001 C CNN
	1    9800 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C16
U 1 1 6248E384
P 10100 8150
F 0 "C16" H 10192 8196 50  0000 L CNN
F 1 "100n" H 10192 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10100 8150 50  0001 C CNN
F 3 "~" H 10100 8150 50  0001 C CNN
	1    10100 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C17
U 1 1 6248E3E2
P 10400 8150
F 0 "C17" H 10492 8196 50  0000 L CNN
F 1 "100n" H 10492 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10400 8150 50  0001 C CNN
F 3 "~" H 10400 8150 50  0001 C CNN
	1    10400 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C18
U 1 1 6248E448
P 10700 8150
F 0 "C18" H 10792 8196 50  0000 L CNN
F 1 "100n" H 10792 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10700 8150 50  0001 C CNN
F 3 "~" H 10700 8150 50  0001 C CNN
	1    10700 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C19
U 1 1 6248E4AC
P 11000 8150
F 0 "C19" H 11092 8196 50  0000 L CNN
F 1 "100n" H 11092 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11000 8150 50  0001 C CNN
F 3 "~" H 11000 8150 50  0001 C CNN
	1    11000 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C20
U 1 1 6248E539
P 11300 8150
F 0 "C20" H 11392 8196 50  0000 L CNN
F 1 "100n" H 11392 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11300 8150 50  0001 C CNN
F 3 "~" H 11300 8150 50  0001 C CNN
	1    11300 8150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C21
U 1 1 6248E59F
P 11550 8150
F 0 "C21" H 11642 8196 50  0000 L CNN
F 1 "100n" H 11642 8105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11550 8150 50  0001 C CNN
F 3 "~" H 11550 8150 50  0001 C CNN
	1    11550 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 8050 9800 8050
Connection ~ 9450 8050
Connection ~ 9800 8050
Wire Wire Line
	9800 8050 10100 8050
Connection ~ 10100 8050
Wire Wire Line
	10100 8050 10400 8050
Connection ~ 10400 8050
Wire Wire Line
	10400 8050 10700 8050
Connection ~ 10700 8050
Wire Wire Line
	10700 8050 11000 8050
Connection ~ 11000 8050
Wire Wire Line
	11000 8050 11300 8050
Connection ~ 11300 8050
Wire Wire Line
	11300 8050 11550 8050
Wire Wire Line
	9450 8250 9800 8250
Connection ~ 9450 8250
Connection ~ 9800 8250
Wire Wire Line
	9800 8250 10100 8250
Connection ~ 10100 8250
Wire Wire Line
	10100 8250 10400 8250
Connection ~ 10400 8250
Wire Wire Line
	10400 8250 10700 8250
Connection ~ 10700 8250
Wire Wire Line
	10700 8250 11000 8250
Connection ~ 11000 8250
Wire Wire Line
	11000 8250 11300 8250
Connection ~ 11300 8250
Wire Wire Line
	11300 8250 11550 8250
$Comp
L IPCMemoryExpansionBoard-rescue:Conn_02x10_Odd_Even-Connector_Generic J5
U 1 1 6263E585
P 15300 8950
F 0 "J5" H 15350 9567 50  0000 C CNN
F 1 "JTAG-STM32" H 15350 9476 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Horizontal" H 15300 8950 50  0001 C CNN
F 3 "~" H 15300 8950 50  0001 C CNN
	1    15300 8950
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0135
U 1 1 6263E736
P 15700 9550
F 0 "#PWR0135" H 15700 9300 50  0001 C CNN
F 1 "GND" H 15705 9377 50  0000 C CNN
F 2 "" H 15700 9550 50  0001 C CNN
F 3 "" H 15700 9550 50  0001 C CNN
	1    15700 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	15700 9550 15700 9450
Wire Wire Line
	15700 8650 15600 8650
Wire Wire Line
	15600 8750 15700 8750
Connection ~ 15700 8750
Wire Wire Line
	15700 8750 15700 8650
Wire Wire Line
	15600 8850 15700 8850
Connection ~ 15700 8850
Wire Wire Line
	15700 8850 15700 8750
Wire Wire Line
	15600 8950 15700 8950
Connection ~ 15700 8950
Wire Wire Line
	15700 8950 15700 8850
Wire Wire Line
	15600 9050 15700 9050
Connection ~ 15700 9050
Wire Wire Line
	15700 9050 15700 8950
Wire Wire Line
	15600 9150 15700 9150
Connection ~ 15700 9150
Wire Wire Line
	15700 9150 15700 9050
Wire Wire Line
	15600 9250 15700 9250
Connection ~ 15700 9250
Wire Wire Line
	15700 9250 15700 9150
Wire Wire Line
	15600 9350 15700 9350
Connection ~ 15700 9350
Wire Wire Line
	15700 9350 15700 9250
Wire Wire Line
	15600 9450 15700 9450
Connection ~ 15700 9450
Wire Wire Line
	15700 9450 15700 9350
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0136
U 1 1 62A5851F
P 14850 8450
F 0 "#PWR0136" H 14850 8300 50  0001 C CNN
F 1 "+3.3V" H 14865 8623 50  0000 C CNN
F 2 "" H 14850 8450 50  0001 C CNN
F 3 "" H 14850 8450 50  0001 C CNN
	1    14850 8450
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0137
U 1 1 62A585CA
P 15800 8450
F 0 "#PWR0137" H 15800 8300 50  0001 C CNN
F 1 "+3.3V" H 15815 8623 50  0000 C CNN
F 2 "" H 15800 8450 50  0001 C CNN
F 3 "" H 15800 8450 50  0001 C CNN
	1    15800 8450
	1    0    0    -1  
$EndComp
Wire Wire Line
	15600 8550 15800 8550
Wire Wire Line
	15100 8550 14850 8550
Wire Wire Line
	14850 8550 14850 8450
NoConn ~ 15100 9050
NoConn ~ 15100 9350
NoConn ~ 15100 9450
Text Label 14450 8850 0    50   ~ 0
STM32_TMS
Text Label 14450 8950 0    50   ~ 0
STM32_TCK
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0138
U 1 1 62E46D4F
P 11100 1350
F 0 "#PWR0138" H 11100 1100 50  0001 C CNN
F 1 "GND" H 11105 1177 50  0000 C CNN
F 2 "" H 11100 1350 50  0001 C CNN
F 3 "" H 11100 1350 50  0001 C CNN
	1    11100 1350
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R1
U 1 1 62E47085
P 11100 950
F 0 "R1" H 11159 996 50  0000 L CNN
F 1 "10k" H 11159 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11100 950 50  0001 C CNN
F 3 "~" H 11100 950 50  0001 C CNN
	1    11100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11100 1150 11100 1050
Wire Wire Line
	11900 1150 11100 1150
Connection ~ 11100 1150
$Comp
L IPCMemoryExpansionBoard-rescue:D_Small_ALT-Device D1
U 1 1 62EE1EEE
P 10800 1150
F 0 "D1" H 10800 1355 50  0000 C CNN
F 1 "1N4148" H 10800 1264 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" V 10800 1150 50  0001 C CNN
F 3 "~" V 10800 1150 50  0001 C CNN
	1    10800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 1150 11100 1150
Wire Wire Line
	10700 1150 10200 1150
Text Label 10200 1150 0    50   ~ 0
NRESET
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0139
U 1 1 62F7E07B
P 11100 850
F 0 "#PWR0139" H 11100 700 50  0001 C CNN
F 1 "+3.3V" H 11115 1023 50  0000 C CNN
F 2 "" H 11100 850 50  0001 C CNN
F 3 "" H 11100 850 50  0001 C CNN
	1    11100 850 
	1    0    0    -1  
$EndComp
Text Label 11300 1150 0    50   ~ 0
STM32_RESET
Wire Wire Line
	15100 9250 14450 9250
Text Label 14450 9250 0    50   ~ 0
STM32_RESET
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0140
U 1 1 62FCE09F
P 13100 750
F 0 "#PWR0140" H 13100 600 50  0001 C CNN
F 1 "+3.3V" H 13115 923 50  0000 C CNN
F 2 "" H 13100 750 50  0001 C CNN
F 3 "" H 13100 750 50  0001 C CNN
	1    13100 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	13800 850  13700 850 
Connection ~ 12600 850 
Wire Wire Line
	12600 850  12500 850 
Connection ~ 12700 850 
Wire Wire Line
	12700 850  12600 850 
Connection ~ 12800 850 
Wire Wire Line
	12800 850  12700 850 
Connection ~ 12900 850 
Wire Wire Line
	12900 850  12800 850 
Connection ~ 13000 850 
Wire Wire Line
	13000 850  12900 850 
Connection ~ 13100 850 
Wire Wire Line
	13100 850  13000 850 
Connection ~ 13200 850 
Wire Wire Line
	13200 850  13100 850 
Connection ~ 13300 850 
Wire Wire Line
	13300 850  13200 850 
Connection ~ 13400 850 
Wire Wire Line
	13400 850  13300 850 
Connection ~ 13500 850 
Wire Wire Line
	13500 850  13400 850 
Connection ~ 13600 850 
Wire Wire Line
	13600 850  13500 850 
Connection ~ 13700 850 
Wire Wire Line
	13700 850  13600 850 
Wire Wire Line
	13100 850  13100 750 
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0141
U 1 1 6306F79A
P 12700 8250
F 0 "#PWR0141" H 12700 8000 50  0001 C CNN
F 1 "GND" H 12705 8077 50  0000 C CNN
F 2 "" H 12700 8250 50  0001 C CNN
F 3 "" H 12700 8250 50  0001 C CNN
	1    12700 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 8250 12700 8050
Wire Wire Line
	12700 8050 12800 8050
Connection ~ 12700 8050
Connection ~ 12800 8050
Wire Wire Line
	12800 8050 12900 8050
Connection ~ 12900 8050
Wire Wire Line
	12900 8050 13000 8050
Connection ~ 13000 8050
Wire Wire Line
	13000 8050 13100 8050
Connection ~ 13100 8050
Wire Wire Line
	13100 8050 13200 8050
Connection ~ 13200 8050
Wire Wire Line
	13200 8050 13300 8050
Connection ~ 13300 8050
Wire Wire Line
	13300 8050 13400 8050
Connection ~ 13400 8050
Wire Wire Line
	13400 8050 13500 8050
Connection ~ 13500 8050
Wire Wire Line
	13500 8050 13600 8050
$Comp
L IPCMemoryExpansionBoard-rescue:LED_ALT-Device D2
U 1 1 63115F60
P 12500 8800
F 0 "D2" H 12491 9016 50  0000 C CNN
F 1 "GREEN" H 12491 8925 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" H 12500 8800 50  0001 C CNN
F 3 "~" H 12500 8800 50  0001 C CNN
	1    12500 8800
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:LED_ALT-Device D3
U 1 1 63116076
P 12500 9200
F 0 "D3" H 12491 9416 50  0000 C CNN
F 1 "YELLOW" H 12491 9325 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" H 12500 9200 50  0001 C CNN
F 3 "~" H 12500 9200 50  0001 C CNN
	1    12500 9200
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:LED_ALT-Device D4
U 1 1 631160F0
P 12500 9600
F 0 "D4" H 12491 9816 50  0000 C CNN
F 1 "RED" H 12491 9725 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O1.27mm_Z2.0mm" H 12500 9600 50  0001 C CNN
F 3 "~" H 12500 9600 50  0001 C CNN
	1    12500 9600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R2
U 1 1 63116413
P 12950 8800
F 0 "R2" V 12754 8800 50  0000 C CNN
F 1 "330" V 12845 8800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12950 8800 50  0001 C CNN
F 3 "~" H 12950 8800 50  0001 C CNN
	1    12950 8800
	0    1    1    0   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R3
U 1 1 631164DB
P 12950 9200
F 0 "R3" V 12754 9200 50  0000 C CNN
F 1 "330" V 12845 9200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12950 9200 50  0001 C CNN
F 3 "~" H 12950 9200 50  0001 C CNN
	1    12950 9200
	0    1    1    0   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R4
U 1 1 63116557
P 12950 9600
F 0 "R4" V 12754 9600 50  0000 C CNN
F 1 "330" V 12845 9600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 12950 9600 50  0001 C CNN
F 3 "~" H 12950 9600 50  0001 C CNN
	1    12950 9600
	0    1    1    0   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR09
U 1 1 631165D5
P 13300 8700
F 0 "#PWR09" H 13300 8550 50  0001 C CNN
F 1 "+3.3V" H 13315 8873 50  0000 C CNN
F 2 "" H 13300 8700 50  0001 C CNN
F 3 "" H 13300 8700 50  0001 C CNN
	1    13300 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	13050 9600 13300 9600
Wire Wire Line
	13300 9600 13300 9200
Wire Wire Line
	13050 8800 13300 8800
Connection ~ 13300 8800
Wire Wire Line
	13300 8800 13300 8700
Wire Wire Line
	13050 9200 13300 9200
Connection ~ 13300 9200
Wire Wire Line
	13300 9200 13300 8800
Wire Wire Line
	12850 8800 12650 8800
Wire Wire Line
	12850 9200 12650 9200
Wire Wire Line
	12850 9600 12650 9600
Wire Wire Line
	12350 9600 11900 9600
Wire Wire Line
	12350 9200 11900 9200
Wire Wire Line
	12350 8800 11900 8800
Text Label 11900 8800 0    50   ~ 0
LED_GREEN
Text Label 11900 9200 0    50   ~ 0
LED_YELLOW
Text Label 11900 9600 0    50   ~ 0
LED_RED
Wire Wire Line
	11900 6550 11500 6550
Wire Wire Line
	11900 6650 11500 6650
Wire Wire Line
	11900 6750 11500 6750
Wire Wire Line
	11900 6850 11500 6850
Wire Wire Line
	11900 4550 11450 4550
Text Label 11450 4550 0    50   ~ 0
A0
Text Label 11500 6550 0    50   ~ 0
A19
Text Label 11500 6650 0    50   ~ 0
A20
Text Label 11500 6750 0    50   ~ 0
A21
Text Label 11500 6850 0    50   ~ 0
A22
Wire Wire Line
	11900 4650 11450 4650
Wire Wire Line
	11900 4750 11450 4750
Wire Wire Line
	11900 4850 11450 4850
Wire Wire Line
	11900 4950 11450 4950
Text Label 11450 4650 0    50   ~ 0
A1
Text Label 11450 4750 0    50   ~ 0
A2
Text Label 11450 4850 0    50   ~ 0
A3
Text Label 11450 4950 0    50   ~ 0
A4
Wire Wire Line
	11900 5050 11450 5050
Text Label 11450 5050 0    50   ~ 0
A5
Text Label 14550 6650 0    50   ~ 0
NOE
Text Label 14550 6750 0    50   ~ 0
NWE
Wire Wire Line
	11900 5750 11450 5750
Wire Wire Line
	11900 5850 11450 5850
Wire Wire Line
	11900 5950 11450 5950
Wire Wire Line
	11900 6050 11450 6050
Text Label 11450 5750 0    50   ~ 0
A6
Text Label 11450 5850 0    50   ~ 0
A7
Text Label 11450 5950 0    50   ~ 0
A8
Text Label 11450 6050 0    50   ~ 0
A9
Wire Wire Line
	11900 6950 11500 6950
Wire Wire Line
	11900 7050 11500 7050
Wire Wire Line
	11900 7150 11500 7150
Wire Wire Line
	11900 7250 11500 7250
Wire Wire Line
	11900 7350 11500 7350
Wire Wire Line
	11900 7450 11500 7450
Wire Wire Line
	11900 7550 11500 7550
Wire Wire Line
	11900 7650 11500 7650
Wire Wire Line
	11900 7750 11500 7750
Text Label 11500 7750 0    50   ~ 0
D12
Text Label 11500 7650 0    50   ~ 0
D11
Text Label 11500 7550 0    50   ~ 0
D10
Text Label 11500 7450 0    50   ~ 0
D9
Text Label 11500 7350 0    50   ~ 0
D8
Text Label 11500 7250 0    50   ~ 0
D7
Text Label 11500 7150 0    50   ~ 0
D6
Text Label 11500 7050 0    50   ~ 0
D5
Text Label 11500 6950 0    50   ~ 0
D4
Wire Wire Line
	14300 7050 14750 7050
Wire Wire Line
	14300 7150 14750 7150
Wire Wire Line
	14300 7250 14750 7250
Wire Wire Line
	14300 7350 14750 7350
Wire Wire Line
	14300 7450 14750 7450
Text Label 14600 7050 0    50   ~ 0
D13
Text Label 14600 7150 0    50   ~ 0
D14
Text Label 14600 7250 0    50   ~ 0
D15
Text Label 14600 7350 0    50   ~ 0
A16
Text Label 14600 7450 0    50   ~ 0
A17
Wire Wire Line
	14300 7550 14750 7550
Wire Wire Line
	14300 7650 14750 7650
Wire Wire Line
	14300 7750 14750 7750
Text Label 14600 7550 0    50   ~ 0
A18
Text Label 14600 7650 0    50   ~ 0
D0
Text Label 14600 7750 0    50   ~ 0
D1
Wire Wire Line
	11900 3050 11450 3050
Wire Wire Line
	11900 3150 11450 3150
Wire Wire Line
	11900 3250 11450 3250
Wire Wire Line
	11900 3350 11450 3350
Text Label 11450 3050 0    50   ~ 0
A12
Text Label 11450 3150 0    50   ~ 0
A13
Text Label 11450 3250 0    50   ~ 0
A14
Text Label 11450 3350 0    50   ~ 0
A15
NoConn ~ 10200 10550
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R12
U 1 1 60724468
P 10600 10350
F 0 "R12" V 10500 10250 50  0000 C CNN
F 1 "22" V 10500 10500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10600 10350 50  0001 C CNN
F 3 "~" H 10600 10350 50  0001 C CNN
	1    10600 10350
	0    1    1    0   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R13
U 1 1 60724541
P 10600 10450
F 0 "R13" V 10500 10550 50  0000 C CNN
F 1 "22" V 10500 10400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10600 10450 50  0001 C CNN
F 3 "~" H 10600 10450 50  0001 C CNN
	1    10600 10450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10700 10450 11500 10450
Text Label 11250 10350 0    50   ~ 0
USB_P
Text Label 11250 10450 0    50   ~ 0
USB_N
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R15
U 1 1 608BDB14
P 14950 3050
F 0 "R15" V 14754 3050 50  0000 C CNN
F 1 "10k" V 14845 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14950 3050 50  0001 C CNN
F 3 "~" H 14950 3050 50  0001 C CNN
	1    14950 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	14850 3050 14300 3050
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR016
U 1 1 60924704
P 15100 3100
F 0 "#PWR016" H 15100 2850 50  0001 C CNN
F 1 "GND" H 15105 2927 50  0000 C CNN
F 2 "" H 15100 3100 50  0001 C CNN
F 3 "" H 15100 3100 50  0001 C CNN
	1    15100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 3050 15100 3050
Wire Wire Line
	15100 3050 15100 3100
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R11
U 1 1 6098B7CA
P 11600 1450
F 0 "R11" V 11404 1450 50  0000 C CNN
F 1 "10k" V 11495 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11600 1450 50  0001 C CNN
F 3 "~" H 11600 1450 50  0001 C CNN
	1    11600 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	11700 1450 11900 1450
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR014
U 1 1 609F2F60
P 11450 1500
F 0 "#PWR014" H 11450 1250 50  0001 C CNN
F 1 "GND" H 11455 1327 50  0000 C CNN
F 2 "" H 11450 1500 50  0001 C CNN
F 3 "" H 11450 1500 50  0001 C CNN
	1    11450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11500 1450 11450 1450
Wire Wire Line
	11450 1450 11450 1500
$Comp
L IPCMemoryExpansionBoard-rescue:Crystal_Small-Device Y1
U 1 1 60AC2DA4
P 11100 2600
F 0 "Y1" V 11054 2688 50  0000 L CNN
F 1 "8MHz" V 11145 2688 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 11100 2600 50  0001 C CNN
F 3 "~" H 11100 2600 50  0001 C CNN
	1    11100 2600
	0    1    1    0   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R10
U 1 1 60AC2E64
P 10750 2600
F 0 "R10" H 10691 2554 50  0000 R CNN
F 1 "1M" H 10691 2645 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10750 2600 50  0001 C CNN
F 3 "~" H 10750 2600 50  0001 C CNN
	1    10750 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	10750 2500 11100 2500
Wire Wire Line
	11100 2500 11400 2500
Wire Wire Line
	11400 2500 11400 2550
Wire Wire Line
	11400 2550 11900 2550
Connection ~ 11100 2500
Wire Wire Line
	10750 2700 11100 2700
Wire Wire Line
	11400 2700 11400 2650
Wire Wire Line
	11400 2650 11900 2650
Connection ~ 11100 2700
Wire Wire Line
	11100 2700 11400 2700
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C24
U 1 1 60BFF66E
P 11100 2800
F 0 "C24" H 11192 2846 50  0000 L CNN
F 1 "22p" H 11192 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11100 2800 50  0001 C CNN
F 3 "~" H 11100 2800 50  0001 C CNN
	1    11100 2800
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C23
U 1 1 60BFF778
P 10400 2600
F 0 "C23" H 10492 2646 50  0000 L CNN
F 1 "22p" H 10492 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10400 2600 50  0001 C CNN
F 3 "~" H 10400 2600 50  0001 C CNN
	1    10400 2600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR012
U 1 1 60BFF9EF
P 10400 2700
F 0 "#PWR012" H 10400 2450 50  0001 C CNN
F 1 "GND" H 10405 2527 50  0000 C CNN
F 2 "" H 10400 2700 50  0001 C CNN
F 3 "" H 10400 2700 50  0001 C CNN
	1    10400 2700
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR013
U 1 1 60BFFA6E
P 11100 2900
F 0 "#PWR013" H 11100 2650 50  0001 C CNN
F 1 "GND" H 11105 2727 50  0000 C CNN
F 2 "" H 11100 2900 50  0001 C CNN
F 3 "" H 11100 2900 50  0001 C CNN
	1    11100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2500 10750 2500
Connection ~ 10750 2500
Wire Wire Line
	14300 6650 14750 6650
Wire Wire Line
	14300 6750 14750 6750
Wire Wire Line
	11900 3850 11450 3850
Wire Wire Line
	11900 4050 11450 4050
Text Label 11450 3850 0    50   ~ 0
NCERAM
Text Label 11450 4050 0    50   ~ 0
NCEROM
Wire Wire Line
	11900 6250 11500 6250
Wire Wire Line
	11900 6350 11500 6350
Text Label 11500 6250 0    50   ~ 0
NLD
Text Label 11500 6350 0    50   ~ 0
NUD
Text Label 14450 8650 0    50   ~ 0
STM32_TRST
Text Label 14450 8750 0    50   ~ 0
STM32_TDI
Text Label 14450 9150 0    50   ~ 0
STM32_TDO
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R9
U 1 1 615E8CAA
P 14350 8350
F 0 "R9" H 14291 8304 50  0000 R CNN
F 1 "10k" H 14291 8395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14350 8350 50  0001 C CNN
F 3 "~" H 14350 8350 50  0001 C CNN
	1    14350 8350
	-1   0    0    1   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R7
U 1 1 615E8ED3
P 14100 8350
F 0 "R7" H 14041 8304 50  0000 R CNN
F 1 "10k" H 14041 8395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14100 8350 50  0001 C CNN
F 3 "~" H 14100 8350 50  0001 C CNN
	1    14100 8350
	-1   0    0    1   
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R6
U 1 1 615E8F61
P 13850 8350
F 0 "R6" H 13791 8304 50  0000 R CNN
F 1 "10k" H 13791 8395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13850 8350 50  0001 C CNN
F 3 "~" H 13850 8350 50  0001 C CNN
	1    13850 8350
	-1   0    0    1   
$EndComp
Wire Wire Line
	15800 8550 15800 8450
Wire Wire Line
	14350 8450 14350 8650
Wire Wire Line
	14350 8650 15100 8650
Wire Wire Line
	14100 8450 14100 8750
Wire Wire Line
	14100 8750 15100 8750
Wire Wire Line
	13850 8850 13850 8450
Wire Wire Line
	13850 8850 15100 8850
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R5
U 1 1 6181FC7A
P 13600 8350
F 0 "R5" H 13541 8304 50  0000 R CNN
F 1 "10k" H 13541 8395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 13600 8350 50  0001 C CNN
F 3 "~" H 13600 8350 50  0001 C CNN
	1    13600 8350
	-1   0    0    1   
$EndComp
Wire Wire Line
	13600 9150 13600 8450
Wire Wire Line
	13600 9150 15100 9150
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R8
U 1 1 61891ABD
P 14250 9500
F 0 "R8" H 14191 9454 50  0000 R CNN
F 1 "10k" H 14191 9545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 14250 9500 50  0001 C CNN
F 3 "~" H 14250 9500 50  0001 C CNN
	1    14250 9500
	-1   0    0    1   
$EndComp
Wire Wire Line
	14250 9400 14250 8950
Wire Wire Line
	14250 8950 15100 8950
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR010
U 1 1 61903B06
P 14100 8150
F 0 "#PWR010" H 14100 8000 50  0001 C CNN
F 1 "+3.3V" H 14115 8323 50  0000 C CNN
F 2 "" H 14100 8150 50  0001 C CNN
F 3 "" H 14100 8150 50  0001 C CNN
	1    14100 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13600 8250 13850 8250
Connection ~ 13850 8250
Wire Wire Line
	13850 8250 14100 8250
Connection ~ 14100 8250
Wire Wire Line
	14100 8250 14350 8250
Wire Wire Line
	14100 8250 14100 8150
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR011
U 1 1 619E8ECF
P 14250 9750
F 0 "#PWR011" H 14250 9500 50  0001 C CNN
F 1 "GND" H 14255 9577 50  0000 C CNN
F 2 "" H 14250 9750 50  0001 C CNN
F 3 "" H 14250 9750 50  0001 C CNN
	1    14250 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	14250 9600 14250 9750
Wire Wire Line
	14300 2450 14900 2450
Wire Wire Line
	14300 2550 14900 2550
Wire Wire Line
	14300 2650 14900 2650
Wire Wire Line
	14300 3250 14900 3250
Text Label 14450 3250 0    50   ~ 0
STM32_TRST
Wire Wire Line
	14300 3150 14900 3150
Text Label 14450 3150 0    50   ~ 0
STM32_TDO
Text Label 14450 2650 0    50   ~ 0
STM32_TDI
Text Label 14450 2550 0    50   ~ 0
STM32_TCK
Text Label 14450 2450 0    50   ~ 0
STM32_TMS
Wire Wire Line
	11900 2850 11450 2850
Wire Wire Line
	11900 2950 11450 2950
Text Label 11450 2850 0    50   ~ 0
A10
Text Label 11450 2950 0    50   ~ 0
A11
Wire Wire Line
	11900 3450 11450 3450
Text Label 11450 3450 0    50   ~ 0
LED_RED
Wire Wire Line
	11900 3550 11450 3550
Wire Wire Line
	11900 3650 11450 3650
Text Label 11450 3550 0    50   ~ 0
LED_GREEN
Text Label 11450 3650 0    50   ~ 0
LED_YELLOW
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 62230CE6
P 15400 2150
F 0 "J6" H 15373 2173 50  0000 R CNN
F 1 "SERIAL" H 15373 2082 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 15400 2150 50  0001 C CNN
F 3 "~" H 15400 2150 50  0001 C CNN
	1    15400 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	15200 2050 14300 2050
Wire Wire Line
	14300 2150 15200 2150
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR017
U 1 1 623229A4
P 15150 2350
F 0 "#PWR017" H 15150 2100 50  0001 C CNN
F 1 "GND" H 15155 2177 50  0000 C CNN
F 2 "" H 15150 2350 50  0001 C CNN
F 3 "" H 15150 2350 50  0001 C CNN
	1    15150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	15150 2350 15150 2250
Wire Wire Line
	15150 2250 15200 2250
NoConn ~ 14300 1150
NoConn ~ 14300 1250
NoConn ~ 14300 1350
NoConn ~ 14300 1450
NoConn ~ 14300 1550
NoConn ~ 14300 1650
NoConn ~ 14300 1750
NoConn ~ 14300 1850
NoConn ~ 14300 1950
NoConn ~ 14300 2850
NoConn ~ 14300 2950
NoConn ~ 14300 3350
NoConn ~ 14300 3450
NoConn ~ 14300 3550
NoConn ~ 14300 3650
NoConn ~ 14300 3750
NoConn ~ 14300 4050
NoConn ~ 14300 4150
NoConn ~ 14300 4250
NoConn ~ 14300 4350
NoConn ~ 14300 4550
NoConn ~ 14300 4650
NoConn ~ 14300 4750
NoConn ~ 14300 4850
NoConn ~ 14300 4950
NoConn ~ 14300 5050
NoConn ~ 14300 5150
NoConn ~ 14300 5250
NoConn ~ 14300 5850
NoConn ~ 14300 5950
NoConn ~ 14300 6050
NoConn ~ 14300 6550
NoConn ~ 14300 6950
NoConn ~ 11900 6450
NoConn ~ 11900 5150
NoConn ~ 11900 5250
NoConn ~ 11900 5350
NoConn ~ 11900 5450
NoConn ~ 11900 5550
NoConn ~ 11900 5650
NoConn ~ 11900 4250
NoConn ~ 11900 4350
Wire Wire Line
	14300 2350 14900 2350
Wire Wire Line
	14300 2250 14900 2250
Text Label 14450 2250 0    50   ~ 0
USB_N
Text Label 14450 2350 0    50   ~ 0
USB_P
Wire Wire Line
	11900 4150 11450 4150
Text Label 11450 4150 0    50   ~ 0
STM32_BUSEN
Wire Wire Line
	10800 4450 11200 4450
Wire Wire Line
	10800 4550 11200 4550
Wire Wire Line
	10800 4650 11200 4650
Text Label 10800 4750 0    50   ~ 0
ROMADR0
Text Label 10800 4650 0    50   ~ 0
ROMADR1
Text Label 10800 4550 0    50   ~ 0
ROMADR2
Wire Wire Line
	11200 4750 10800 4750
Text Label 10800 4450 0    50   ~ 0
ROMADR3
Text Label 3350 8200 0    50   ~ 0
DTACK
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C25
U 1 1 606DFEB2
P 11050 2050
F 0 "C25" H 11142 2096 50  0000 L CNN
F 1 "2.2u" H 11142 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11050 2050 50  0001 C CNN
F 3 "~" H 11050 2050 50  0001 C CNN
	1    11050 2050
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0142
U 1 1 606DFF86
P 11050 2150
F 0 "#PWR0142" H 11050 1900 50  0001 C CNN
F 1 "GND" H 11055 1977 50  0000 C CNN
F 2 "" H 11050 2150 50  0001 C CNN
F 3 "" H 11050 2150 50  0001 C CNN
	1    11050 2150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C26
U 1 1 606E00AC
P 11400 2050
F 0 "C26" H 11492 2096 50  0000 L CNN
F 1 "2.2u" H 11492 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11400 2050 50  0001 C CNN
F 3 "~" H 11400 2050 50  0001 C CNN
	1    11400 2050
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0143
U 1 1 606E00B2
P 11400 2150
F 0 "#PWR0143" H 11400 1900 50  0001 C CNN
F 1 "GND" H 11405 1977 50  0000 C CNN
F 2 "" H 11400 2150 50  0001 C CNN
F 3 "" H 11400 2150 50  0001 C CNN
	1    11400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	11900 1650 11550 1650
Wire Wire Line
	11550 1650 11550 1800
Wire Wire Line
	11550 1800 11050 1800
Wire Wire Line
	11050 1800 11050 1950
Wire Wire Line
	11400 1950 11400 1850
Wire Wire Line
	11400 1850 11600 1850
Wire Wire Line
	11600 1850 11600 1750
Wire Wire Line
	11600 1750 11900 1750
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR0144
U 1 1 60854B4D
P 11800 1000
F 0 "#PWR0144" H 11800 850 50  0001 C CNN
F 1 "+3.3V" H 11815 1173 50  0000 C CNN
F 2 "" H 11800 1000 50  0001 C CNN
F 3 "" H 11800 1000 50  0001 C CNN
	1    11800 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11900 1250 11800 1250
Wire Wire Line
	11800 1250 11800 1000
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C22
U 1 1 609CF7F2
P 11100 1250
F 0 "C22" H 11192 1296 50  0000 L CNN
F 1 "2.2u" H 11192 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 11100 1250 50  0001 C CNN
F 3 "~" H 11100 1250 50  0001 C CNN
	1    11100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11800 1250 11800 1850
Wire Wire Line
	11800 1850 11900 1850
Connection ~ 11800 1250
$Comp
L IPCMemoryExpansionBoard-rescue:74LS38-74xx U11
U 5 1 6072BD80
P 6350 10450
F 0 "U11" H 6450 10800 50  0000 C CNN
F 1 "74LS38" H 6350 10450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6350 10450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS38" H 6350 10450 50  0001 C CNN
	5    6350 10450
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0145
U 1 1 6072C697
P 6350 10950
F 0 "#PWR0145" H 6350 10700 50  0001 C CNN
F 1 "GND" H 6355 10777 50  0000 C CNN
F 2 "" H 6350 10950 50  0001 C CNN
F 3 "" H 6350 10950 50  0001 C CNN
	1    6350 10950
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0146
U 1 1 6072C728
P 6350 9850
F 0 "#PWR0146" H 6350 9700 50  0001 C CNN
F 1 "+5V" H 6365 10023 50  0000 C CNN
F 2 "" H 6350 9850 50  0001 C CNN
F 3 "" H 6350 9850 50  0001 C CNN
	1    6350 9850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 10350 11500 10350
$Comp
L IPCMemoryExpansionBoard-rescue:USB_B_Micro-Connector J3
U 1 1 616F360D
P 9900 10350
F 0 "J3" H 9955 10817 50  0000 C CNN
F 1 "USB_B_Micro" H 9955 10726 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 10050 10300 50  0001 C CNN
F 3 "~" H 10050 10300 50  0001 C CNN
	1    9900 10350
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C27
U 1 1 608D884C
P 9200 7600
F 0 "C27" H 9292 7646 50  0000 L CNN
F 1 "100n" H 9292 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9200 7600 50  0001 C CNN
F 3 "~" H 9200 7600 50  0001 C CNN
	1    9200 7600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C28
U 1 1 608D8853
P 9500 7600
F 0 "C28" H 9592 7646 50  0000 L CNN
F 1 "100n" H 9592 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9500 7600 50  0001 C CNN
F 3 "~" H 9500 7600 50  0001 C CNN
	1    9500 7600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C29
U 1 1 608D885A
P 9800 7600
F 0 "C29" H 9892 7646 50  0000 L CNN
F 1 "100n" H 9892 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9800 7600 50  0001 C CNN
F 3 "~" H 9800 7600 50  0001 C CNN
	1    9800 7600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C30
U 1 1 608D8861
P 10100 7600
F 0 "C30" H 10192 7646 50  0000 L CNN
F 1 "100n" H 10192 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10100 7600 50  0001 C CNN
F 3 "~" H 10100 7600 50  0001 C CNN
	1    10100 7600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C31
U 1 1 608D8868
P 10400 7600
F 0 "C31" H 10492 7646 50  0000 L CNN
F 1 "100n" H 10492 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10400 7600 50  0001 C CNN
F 3 "~" H 10400 7600 50  0001 C CNN
	1    10400 7600
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:C_Small-Device C32
U 1 1 608D886F
P 10650 7600
F 0 "C32" H 10742 7646 50  0000 L CNN
F 1 "100n" H 10742 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10650 7600 50  0001 C CNN
F 3 "~" H 10650 7600 50  0001 C CNN
	1    10650 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 7500 9500 7500
Connection ~ 9500 7500
Wire Wire Line
	9500 7500 9800 7500
Connection ~ 9800 7500
Wire Wire Line
	9800 7500 10100 7500
Connection ~ 10100 7500
Wire Wire Line
	10100 7500 10400 7500
Connection ~ 10400 7500
Wire Wire Line
	10400 7500 10650 7500
Wire Wire Line
	9200 7700 9500 7700
Connection ~ 9500 7700
Wire Wire Line
	9500 7700 9800 7700
Connection ~ 9800 7700
Wire Wire Line
	9800 7700 10100 7700
Connection ~ 10100 7700
Wire Wire Line
	10100 7700 10400 7700
Connection ~ 10400 7700
Wire Wire Line
	10400 7700 10650 7700
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR020
U 1 1 60A6CD23
P 10100 7700
F 0 "#PWR020" H 10100 7450 50  0001 C CNN
F 1 "GND" H 10105 7527 50  0000 C CNN
F 2 "" H 10100 7700 50  0001 C CNN
F 3 "" H 10100 7700 50  0001 C CNN
	1    10100 7700
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+3.3V-power #PWR019
U 1 1 60A6CDC0
P 10100 7500
F 0 "#PWR019" H 10100 7350 50  0001 C CNN
F 1 "+3.3V" H 10115 7673 50  0000 C CNN
F 2 "" H 10100 7500 50  0001 C CNN
F 3 "" H 10100 7500 50  0001 C CNN
	1    10100 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 6050 8550 6100
Wire Wire Line
	8050 6050 8550 6050
Wire Wire Line
	8050 5150 8100 5150
Wire Wire Line
	6950 5250 7300 5250
Wire Wire Line
	7250 5150 7250 6450
Wire Wire Line
	7250 6450 7350 6450
Connection ~ 7250 5150
Wire Wire Line
	8100 7450 8100 7350
Wire Wire Line
	8100 7350 8050 7350
Wire Wire Line
	7300 5250 7300 6550
Wire Wire Line
	7300 6550 7350 6550
Connection ~ 7300 5250
Wire Wire Line
	7300 5250 7350 5250
Wire Wire Line
	8050 6450 8100 6450
Wire Wire Line
	8100 6450 8100 5150
Connection ~ 8100 5150
Wire Wire Line
	8100 5150 8650 5150
$Comp
L IPCMemoryExpansionBoard-rescue:R_Small-Device R14
U 1 1 616A9E2B
P 1100 9150
F 0 "R14" H 1159 9196 50  0000 L CNN
F 1 "10k" H 1159 9105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1100 9150 50  0001 C CNN
F 3 "~" H 1100 9150 50  0001 C CNN
	1    1100 9150
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0126
U 1 1 616A9FFD
P 1100 9300
F 0 "#PWR0126" H 1100 9050 50  0001 C CNN
F 1 "GND" H 1105 9127 50  0000 C CNN
F 2 "" H 1100 9300 50  0001 C CNN
F 3 "" H 1100 9300 50  0001 C CNN
	1    1100 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 9300 1100 9250
Wire Wire Line
	1700 9000 1350 9000
Wire Wire Line
	1100 9000 1100 9050
Connection ~ 1350 9000
Wire Wire Line
	1350 9000 1100 9000
Wire Wire Line
	1700 8900 1350 8900
Connection ~ 1350 8900
Wire Wire Line
	1350 8900 1350 9000
Wire Wire Line
	1700 8800 1350 8800
Wire Wire Line
	1350 8800 1350 8900
Connection ~ 8200 8250
Connection ~ 8800 8250
Wire Wire Line
	8200 8250 8800 8250
Wire Wire Line
	8200 8050 8800 8050
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0147
U 1 1 61CAD484
P 5800 10350
F 0 "#PWR0147" H 5800 10100 50  0001 C CNN
F 1 "GND" H 5805 10177 50  0000 C CNN
F 2 "" H 5800 10350 50  0001 C CNN
F 3 "" H 5800 10350 50  0001 C CNN
	1    5800 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 9950 6350 9850
Wire Wire Line
	6350 9950 5800 9950
Wire Wire Line
	5800 9950 5800 10150
Connection ~ 6350 9950
$Comp
L Device:D_Schottky_Small D6
U 1 1 61286079
P 10400 10150
F 0 "D6" H 10500 10200 50  0000 C CNN
F 1 "MBRS130L" H 10400 10100 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" V 10400 10150 50  0001 C CNN
F 3 "~" V 10400 10150 50  0001 C CNN
	1    10400 10150
	-1   0    0    1   
$EndComp
Wire Wire Line
	10200 10150 10300 10150
Wire Wire Line
	10500 10150 10600 10150
$Comp
L Device:D_Schottky_Small D5
U 1 1 613A241C
P 2200 1300
F 0 "D5" H 2100 1250 50  0000 C CNN
F 1 "MBRS130L" H 1950 1350 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" V 2200 1300 50  0001 C CNN
F 3 "~" V 2200 1300 50  0001 C CNN
	1    2200 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 1300 2400 1300
Wire Wire Line
	1450 1200 2000 1200
Wire Wire Line
	1450 1300 2050 1300
Wire Wire Line
	1900 5700 1450 5700
Wire Wire Line
	2200 6400 1450 6400
Wire Wire Line
	2050 1300 2050 7100
Wire Wire Line
	1450 7100 2050 7100
Connection ~ 2050 1300
Wire Wire Line
	2050 1300 2100 1300
Wire Wire Line
	6700 4300 7000 4300
Wire Wire Line
	1450 2300 2000 2300
Wire Wire Line
	1300 8700 1700 8700
Text Label 1350 8500 0    50   ~ 0
NBAS
Wire Wire Line
	2400 8600 2800 8600
Text Label 2500 8400 0    50   ~ 0
NAS
Wire Wire Line
	1050 8200 1700 8200
Text Label 1150 8200 0    50   ~ 0
STM32_BUSEN
Text Label 5250 900  0    50   ~ 0
STM32_BUSEN
NoConn ~ 14300 6450
Wire Wire Line
	14300 6250 14750 6250
Text Label 14650 6250 0    50   ~ 0
D2
Wire Wire Line
	14300 6350 14750 6350
Text Label 14650 6350 0    50   ~ 0
D3
NoConn ~ 14300 5350
NoConn ~ 14300 5450
NoConn ~ 14300 5550
NoConn ~ 14300 5650
NoConn ~ 14300 5750
NoConn ~ 14300 3850
NoConn ~ 14300 3950
NoConn ~ 11900 3750
NoConn ~ 11900 3950
Text Label 7500 9650 0    50   ~ 0
STM32_RESET
Text Label 7500 9750 0    50   ~ 0
STM32_BUSEN
Wire Wire Line
	14300 6850 14750 6850
Text Label 14400 6850 0    50   ~ 0
FLASH_RY
Wire Wire Line
	1450 5900 1900 5900
Text Label 1700 5900 0    50   ~ 0
NBAS
Wire Wire Line
	1450 3800 2000 3800
Wire Wire Line
	1450 4400 2000 4400
Wire Wire Line
	1450 4500 2000 4500
Wire Wire Line
	1450 4600 2000 4600
Wire Wire Line
	1450 4700 2000 4700
Wire Wire Line
	1450 4800 2000 4800
Wire Wire Line
	1450 4900 2000 4900
Wire Wire Line
	1450 5000 2000 5000
Wire Wire Line
	1450 5100 2000 5100
Wire Wire Line
	1450 5200 2000 5200
Wire Wire Line
	1450 5300 2000 5300
$Comp
L Device:R_Network08 RN3
U 1 1 6379F4A9
P 3500 1150
F 0 "RN3" V 2883 1150 50  0000 C CNN
F 1 "3.9k" V 2974 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3975 1150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3500 1150 50  0001 C CNN
	1    3500 1150
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Network08 RN5
U 1 1 6379FA12
P 3500 3250
F 0 "RN5" V 2883 3250 50  0000 C CNN
F 1 "3.9k" V 2974 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3975 3250 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3500 3250 50  0001 C CNN
	1    3500 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Network08 RN9
U 1 1 6379FCAE
P 4300 3250
F 0 "RN9" V 3683 3250 50  0000 C CNN
F 1 "3.3k" V 3774 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 4775 3250 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4300 3250 50  0001 C CNN
	1    4300 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Network08 RN7
U 1 1 6379FDD2
P 4300 1150
F 0 "RN7" V 3683 1150 50  0000 C CNN
F 1 "3.3k" V 3774 1150 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 4775 1150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4300 1150 50  0001 C CNN
	1    4300 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 750  4100 750 
Wire Wire Line
	3700 850  4100 850 
Wire Wire Line
	3700 950  4100 950 
Wire Wire Line
	4100 1050 3700 1050
Wire Wire Line
	3700 1150 4100 1150
Wire Wire Line
	4100 1250 3700 1250
Wire Wire Line
	3700 1350 4100 1350
Wire Wire Line
	4100 1450 3700 1450
Wire Wire Line
	3700 2850 4100 2850
Wire Wire Line
	4100 2950 3700 2950
Wire Wire Line
	3700 3050 4100 3050
Wire Wire Line
	4100 3150 3700 3150
Wire Wire Line
	3700 3250 4100 3250
Wire Wire Line
	4100 3350 3700 3350
Wire Wire Line
	3700 3450 4100 3450
Wire Wire Line
	4100 3550 3700 3550
Text Label 3850 2850 0    50   ~ 0
BA17
Text Label 3850 2950 0    50   ~ 0
BA18
Text Label 3850 3050 0    50   ~ 0
BA19
Text Label 3850 3150 0    50   ~ 0
BA20
Text Label 3850 3250 0    50   ~ 0
BA21
Text Label 3850 3350 0    50   ~ 0
BA22
Text Label 3850 3450 0    50   ~ 0
BA23
Text Label 3800 3550 0    50   ~ 0
NBRESET
Text Label 3850 1450 0    50   ~ 0
BA8
Text Label 3850 1350 0    50   ~ 0
BA7
Text Label 3850 1250 0    50   ~ 0
BA6
Text Label 3850 1150 0    50   ~ 0
BA5
Text Label 3850 1050 0    50   ~ 0
BA4
Text Label 3850 950  0    50   ~ 0
BA3
Text Label 3850 850  0    50   ~ 0
BA2
Text Label 3850 750  0    50   ~ 0
BA1
Wire Wire Line
	5650 4000 6000 4000
$Comp
L Device:R_Network08 RN4
U 1 1 64E125F3
P 3500 2200
F 0 "RN4" V 2883 2200 50  0000 C CNN
F 1 "3.9k" V 2974 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 3975 2200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3500 2200 50  0001 C CNN
	1    3500 2200
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Network08 RN8
U 1 1 64E125F9
P 4300 2200
F 0 "RN8" V 3683 2200 50  0000 C CNN
F 1 "3.3k" V 3774 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 4775 2200 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4300 2200 50  0001 C CNN
	1    4300 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1800 4100 1800
Wire Wire Line
	3700 1900 4100 1900
Wire Wire Line
	3700 2000 4100 2000
Wire Wire Line
	4100 2100 3700 2100
Wire Wire Line
	3700 2200 4100 2200
Wire Wire Line
	4100 2300 3700 2300
Wire Wire Line
	3700 2400 4100 2400
Wire Wire Line
	4100 2500 3700 2500
Text Label 3850 2500 0    50   ~ 0
BA16
Text Label 3850 2400 0    50   ~ 0
BA15
Text Label 3850 2300 0    50   ~ 0
BA14
Text Label 3850 2200 0    50   ~ 0
BA13
Text Label 3850 2100 0    50   ~ 0
BA12
Text Label 3850 2000 0    50   ~ 0
BA11
Text Label 3850 1900 0    50   ~ 0
BA10
Text Label 3850 1800 0    50   ~ 0
BA9
Text Label 5700 3700 0    50   ~ 0
BA17
Text Label 5700 3800 0    50   ~ 0
BA18
Text Label 5700 3900 0    50   ~ 0
BA19
Text Label 5700 4000 0    50   ~ 0
BA20
Text Label 5700 4100 0    50   ~ 0
BA21
Text Label 5700 4200 0    50   ~ 0
BA22
Text Label 5700 4300 0    50   ~ 0
BA23
Text Label 5650 4400 0    50   ~ 0
NBRESET
$Comp
L Device:R_Network05 RN6
U 1 1 65012228
P 3600 6700
F 0 "RN6" V 3183 6700 50  0000 C CNN
F 1 "3.9k" V 3274 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP6" V 3975 6700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 3600 6700 50  0001 C CNN
	1    3600 6700
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Network05 RN10
U 1 1 650123DE
P 4500 6700
F 0 "RN10" V 4917 6700 50  0000 C CNN
F 1 "3.3k" V 4826 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP6" V 4875 6700 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4500 6700 50  0001 C CNN
	1    4500 6700
	0    1    -1   0   
$EndComp
Wire Wire Line
	3800 6500 4300 6500
Wire Wire Line
	3800 6600 4300 6600
Wire Wire Line
	3800 6700 4300 6700
Wire Wire Line
	3800 6800 4300 6800
Wire Wire Line
	4300 6900 3800 6900
Text Label 3950 6600 0    50   ~ 0
BNPS
Text Label 3950 6500 0    50   ~ 0
BRNW
Text Label 3950 6700 0    50   ~ 0
NBAS
Text Label 3950 6900 0    50   ~ 0
NBUD
Text Label 3950 6800 0    50   ~ 0
NBLD
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 65365562
P 2800 7550
F 0 "J2" H 2906 7928 50  0000 C CNN
F 1 "TESTPOINTS" H 2906 7837 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2800 7550 50  0001 C CNN
F 3 "~" H 2800 7550 50  0001 C CNN
	1    2800 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7350 3350 7350
Wire Wire Line
	3000 7450 3350 7450
Wire Wire Line
	3000 7550 3350 7550
Wire Wire Line
	3000 7650 3350 7650
Wire Wire Line
	3000 7750 3350 7750
Text Label 3150 7650 0    50   ~ 0
NBLD
Text Label 3150 7750 0    50   ~ 0
NBUD
Text Label 3150 7550 0    50   ~ 0
NBAS
Text Label 3150 7350 0    50   ~ 0
BRNW
Text Label 3150 7450 0    50   ~ 0
BNPS
$Comp
L Connector:Conn_01x08_Male J11
U 1 1 656CA602
P 6750 5650
F 0 "J11" H 6856 6128 50  0000 C CNN
F 1 "TESTPOINTS" H 6856 6037 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6750 5650 50  0001 C CNN
F 3 "~" H 6750 5650 50  0001 C CNN
	1    6750 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J8
U 1 1 656CA740
P 5000 1300
F 0 "J8" H 5106 1778 50  0000 C CNN
F 1 "TESTPOINTS" H 4850 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5000 1300 50  0001 C CNN
F 3 "~" H 5000 1300 50  0001 C CNN
	1    5000 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J9
U 1 1 656CAB45
P 5300 2650
F 0 "J9" H 5406 3128 50  0000 C CNN
F 1 "TESTPOINTS" H 5150 3050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5300 2650 50  0001 C CNN
F 3 "~" H 5300 2650 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J10
U 1 1 656CACED
P 5450 4000
F 0 "J10" H 5556 4478 50  0000 C CNN
F 1 "TESTPOINTS" H 5250 4400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 5450 4000 50  0001 C CNN
F 3 "~" H 5450 4000 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J12
U 1 1 658D82E1
P 6750 6950
F 0 "J12" H 6856 7428 50  0000 C CNN
F 1 "TESTPOINTS" H 6856 7337 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6750 6950 50  0001 C CNN
F 3 "~" H 6750 6950 50  0001 C CNN
	1    6750 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network08 RN12
U 1 1 65A385DC
P 5150 6400
F 0 "RN12" V 4533 6400 50  0000 C CNN
F 1 "3.9k" V 4624 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5625 6400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5150 6400 50  0001 C CNN
	1    5150 6400
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Network08 RN14
U 1 1 65A385E2
P 5950 6400
F 0 "RN14" V 5333 6400 50  0000 C CNN
F 1 "3.3k" V 5424 6400 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 6425 6400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 5950 6400 50  0001 C CNN
	1    5950 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 6000 5750 6000
Wire Wire Line
	5750 6100 5350 6100
Wire Wire Line
	5350 6200 5750 6200
Wire Wire Line
	5750 6300 5350 6300
Wire Wire Line
	5350 6400 5750 6400
Wire Wire Line
	5750 6500 5350 6500
Wire Wire Line
	5350 6600 5750 6600
Wire Wire Line
	5750 6700 5350 6700
Text Label 1700 4600 0    50   ~ 0
BD8
Text Label 1700 4700 0    50   ~ 0
BD9
Text Label 1700 4800 0    50   ~ 0
BD10
Text Label 1700 4900 0    50   ~ 0
BD11
Text Label 1700 5000 0    50   ~ 0
BD12
Text Label 1700 5100 0    50   ~ 0
BD13
Text Label 1700 5200 0    50   ~ 0
BD14
Text Label 1700 5300 0    50   ~ 0
BD15
$Comp
L Device:R_Network08 RN11
U 1 1 65A385F8
P 4100 4650
F 0 "RN11" V 3483 4650 50  0000 C CNN
F 1 "3.9k" V 3574 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 4575 4650 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4100 4650 50  0001 C CNN
	1    4100 4650
	0    -1   1    0   
$EndComp
$Comp
L Device:R_Network08 RN13
U 1 1 65A385FE
P 4900 4650
F 0 "RN13" V 4283 4650 50  0000 C CNN
F 1 "3.3k" V 4374 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Array_SIP9" V 5375 4650 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4900 4650 50  0001 C CNN
	1    4900 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 4250 4700 4250
Wire Wire Line
	4300 4350 4700 4350
Wire Wire Line
	4300 4450 4700 4450
Wire Wire Line
	4700 4550 4300 4550
Wire Wire Line
	4300 4650 4700 4650
Wire Wire Line
	4700 4750 4300 4750
Wire Wire Line
	4300 4850 4700 4850
Wire Wire Line
	4700 4950 4300 4950
Text Label 1700 4500 0    50   ~ 0
BD7
Text Label 1700 4400 0    50   ~ 0
BD6
Text Label 1700 4300 0    50   ~ 0
BD5
Text Label 1700 4200 0    50   ~ 0
BD4
Text Label 1700 4100 0    50   ~ 0
BD3
Text Label 1700 4000 0    50   ~ 0
BD2
Text Label 1700 3900 0    50   ~ 0
BD1
Text Label 1700 3800 0    50   ~ 0
BD0
Text Label 5400 1000 0    50   ~ 0
BA1
Text Label 5400 1100 0    50   ~ 0
BA2
Text Label 5400 1200 0    50   ~ 0
BA3
Text Label 5400 1300 0    50   ~ 0
BA4
Text Label 5400 1400 0    50   ~ 0
BA5
Text Label 5400 1500 0    50   ~ 0
BA6
Text Label 5400 1600 0    50   ~ 0
BA7
Text Label 5400 1700 0    50   ~ 0
BA8
Text Label 5550 2350 0    50   ~ 0
BA9
Text Label 5550 2450 0    50   ~ 0
BA10
Text Label 5550 2550 0    50   ~ 0
BA11
Text Label 5550 2650 0    50   ~ 0
BA12
Text Label 5550 2750 0    50   ~ 0
BA13
Text Label 5550 2850 0    50   ~ 0
BA14
Text Label 5550 2950 0    50   ~ 0
BA15
Text Label 5550 3050 0    50   ~ 0
BA16
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 65AF6D6A
P 3650 7200
F 0 "J7" H 3756 7378 50  0000 C CNN
F 1 "TESTPOINTS" H 3756 7287 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 7200 50  0001 C CNN
F 3 "~" H 3650 7200 50  0001 C CNN
	1    3650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7200 4150 7200
Wire Wire Line
	3850 7300 4150 7300
Text Label 3900 7200 0    50   ~ 0
DTACK
Text Label 3900 7300 0    50   ~ 0
IMA
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0105
U 1 1 65D2EC19
P 4800 6950
F 0 "#PWR0105" H 4800 6700 50  0001 C CNN
F 1 "GND" H 4805 6777 50  0000 C CNN
F 2 "" H 4800 6950 50  0001 C CNN
F 3 "" H 4800 6950 50  0001 C CNN
	1    4800 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6900 4700 6900
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0107
U 1 1 65DEC49C
P 6300 6150
F 0 "#PWR0107" H 6300 5900 50  0001 C CNN
F 1 "GND" H 6305 5977 50  0000 C CNN
F 2 "" H 6300 6150 50  0001 C CNN
F 3 "" H 6300 6150 50  0001 C CNN
	1    6300 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6150 6300 6000
Wire Wire Line
	6300 6000 6150 6000
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0133
U 1 1 65EAAAD5
P 3350 6450
F 0 "#PWR0133" H 3350 6300 50  0001 C CNN
F 1 "+5V" H 3365 6623 50  0000 C CNN
F 2 "" H 3350 6450 50  0001 C CNN
F 3 "" H 3350 6450 50  0001 C CNN
	1    3350 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6500 3350 6500
Wire Wire Line
	3350 6500 3350 6450
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0134
U 1 1 65F69D1B
P 4750 5900
F 0 "#PWR0134" H 4750 5750 50  0001 C CNN
F 1 "+5V" H 4765 6073 50  0000 C CNN
F 2 "" H 4750 5900 50  0001 C CNN
F 3 "" H 4750 5900 50  0001 C CNN
	1    4750 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6000 4750 6000
Wire Wire Line
	4750 6000 4750 5900
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0148
U 1 1 66029B77
P 3700 4100
F 0 "#PWR0148" H 3700 3950 50  0001 C CNN
F 1 "+5V" H 3715 4273 50  0000 C CNN
F 2 "" H 3700 4100 50  0001 C CNN
F 3 "" H 3700 4100 50  0001 C CNN
	1    3700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4250 3700 4250
Wire Wire Line
	3700 4250 3700 4100
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0149
U 1 1 660EA7D0
P 5300 4350
F 0 "#PWR0149" H 5300 4100 50  0001 C CNN
F 1 "GND" H 5305 4177 50  0000 C CNN
F 2 "" H 5300 4350 50  0001 C CNN
F 3 "" H 5300 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4350 5300 4250
Wire Wire Line
	5300 4250 5100 4250
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0150
U 1 1 661ACBDC
P 4650 3000
F 0 "#PWR0150" H 4650 2750 50  0001 C CNN
F 1 "GND" H 4655 2827 50  0000 C CNN
F 2 "" H 4650 3000 50  0001 C CNN
F 3 "" H 4650 3000 50  0001 C CNN
	1    4650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2850 4650 2850
Wire Wire Line
	4650 2850 4650 3000
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0151
U 1 1 6626F66A
P 3150 2800
F 0 "#PWR0151" H 3150 2650 50  0001 C CNN
F 1 "+5V" H 3165 2973 50  0000 C CNN
F 2 "" H 3150 2800 50  0001 C CNN
F 3 "" H 3150 2800 50  0001 C CNN
	1    3150 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2850 3150 2850
Wire Wire Line
	3150 2850 3150 2800
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0152
U 1 1 66332F33
P 3100 1750
F 0 "#PWR0152" H 3100 1600 50  0001 C CNN
F 1 "+5V" H 3115 1923 50  0000 C CNN
F 2 "" H 3100 1750 50  0001 C CNN
F 3 "" H 3100 1750 50  0001 C CNN
	1    3100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1800 3100 1800
Wire Wire Line
	3100 1800 3100 1750
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0153
U 1 1 663F7643
P 4600 1950
F 0 "#PWR0153" H 4600 1700 50  0001 C CNN
F 1 "GND" H 4605 1777 50  0000 C CNN
F 2 "" H 4600 1950 50  0001 C CNN
F 3 "" H 4600 1950 50  0001 C CNN
	1    4600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1950 4600 1800
Wire Wire Line
	4600 1800 4500 1800
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0154
U 1 1 664BCD13
P 4550 950
F 0 "#PWR0154" H 4550 700 50  0001 C CNN
F 1 "GND" H 4555 777 50  0000 C CNN
F 2 "" H 4550 950 50  0001 C CNN
F 3 "" H 4550 950 50  0001 C CNN
	1    4550 950 
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:+5V-power #PWR0155
U 1 1 664BCDDC
P 3050 700
F 0 "#PWR0155" H 3050 550 50  0001 C CNN
F 1 "+5V" H 3065 873 50  0000 C CNN
F 2 "" H 3050 700 50  0001 C CNN
F 3 "" H 3050 700 50  0001 C CNN
	1    3050 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 750  3050 750 
Wire Wire Line
	3050 750  3050 700 
Wire Wire Line
	4550 950  4550 750 
Wire Wire Line
	4550 750  4500 750 
Wire Wire Line
	5750 9500 6100 9500
Text Label 5750 9500 0    50   ~ 0
D6
$Comp
L Connector:Conn_01x01_Male J17
U 1 1 678F9CCD
P 10950 9250
F 0 "J17" H 11056 9428 50  0000 C CNN
F 1 "TESTPOINT" H 11056 9337 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10950 9250 50  0001 C CNN
F 3 "~" H 10950 9250 50  0001 C CNN
	1    10950 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 9000 11700 9000
Text Label 11350 9000 0    50   ~ 0
NCERAM
$Comp
L Connector:Conn_01x01_Male J18
U 1 1 679C2AFF
P 10950 9000
F 0 "J18" H 11056 9178 50  0000 C CNN
F 1 "TESTPOINT" H 11056 9087 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10950 9000 50  0001 C CNN
F 3 "~" H 10950 9000 50  0001 C CNN
	1    10950 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 9250 11700 9250
Text Label 11350 9250 0    50   ~ 0
NCEROM
$Comp
L Connector:Conn_01x01_Male J19
U 1 1 67A8C04A
P 10950 9500
F 0 "J19" H 11056 9678 50  0000 C CNN
F 1 "TESTPOINT" H 11056 9587 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10950 9500 50  0001 C CNN
F 3 "~" H 10950 9500 50  0001 C CNN
	1    10950 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 9500 11700 9500
Text Label 11350 9500 0    50   ~ 0
NOE
$Comp
L Connector:Conn_01x01_Male J20
U 1 1 67B56270
P 10950 9750
F 0 "J20" H 11056 9928 50  0000 C CNN
F 1 "TESTPOINT" H 11056 9837 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10950 9750 50  0001 C CNN
F 3 "~" H 10950 9750 50  0001 C CNN
	1    10950 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 9750 11700 9750
Text Label 11350 9750 0    50   ~ 0
NWE
$Comp
L Connector:Conn_01x01_Male J21
U 1 1 67C2111E
P 9850 8550
F 0 "J21" H 9956 8728 50  0000 C CNN
F 1 "TESTPOINT" H 9956 8637 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9850 8550 50  0001 C CNN
F 3 "~" H 9850 8550 50  0001 C CNN
	1    9850 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 8550 10600 8550
Text Label 10250 8550 0    50   ~ 0
FLASH_RY
$Comp
L Connector:Conn_01x01_Male J14
U 1 1 67CECAB5
P 9850 8800
F 0 "J14" H 9956 8978 50  0000 C CNN
F 1 "TESTPOINT" H 9956 8887 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9850 8800 50  0001 C CNN
F 3 "~" H 9850 8800 50  0001 C CNN
	1    9850 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 8800 10600 8800
Text Label 10250 8800 0    50   ~ 0
ROMADR3
$Comp
L Connector:Conn_01x01_Male J15
U 1 1 67DB8E32
P 9850 9050
F 0 "J15" H 9956 9228 50  0000 C CNN
F 1 "TESTPOINT" H 9956 9137 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9850 9050 50  0001 C CNN
F 3 "~" H 9850 9050 50  0001 C CNN
	1    9850 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 9050 10600 9050
Text Label 10250 9050 0    50   ~ 0
ROMADR2
$Comp
L Connector:Conn_01x01_Male J16
U 1 1 67E85F45
P 9850 9300
F 0 "J16" H 9956 9478 50  0000 C CNN
F 1 "TESTPOINT" H 9956 9387 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9850 9300 50  0001 C CNN
F 3 "~" H 9850 9300 50  0001 C CNN
	1    9850 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 9300 10600 9300
Text Label 10250 9300 0    50   ~ 0
ROMADR1
$Comp
L Connector:Conn_01x01_Male J13
U 1 1 67F53D1F
P 9850 9550
F 0 "J13" H 9956 9728 50  0000 C CNN
F 1 "TESTPOINT" H 9956 9637 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9850 9550 50  0001 C CNN
F 3 "~" H 9850 9550 50  0001 C CNN
	1    9850 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 9550 10600 9550
Text Label 10250 9550 0    50   ~ 0
ROMADR0
$Comp
L Connector:Conn_01x01_Male J22
U 1 1 68022F7C
P 10950 8550
F 0 "J22" H 11056 8728 50  0000 C CNN
F 1 "TESTPOINT" H 11056 8637 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10950 8550 50  0001 C CNN
F 3 "~" H 10950 8550 50  0001 C CNN
	1    10950 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 8550 11700 8550
Text Label 11350 8550 0    50   ~ 0
STM32_BUSEN
$Comp
L Connector:Conn_01x01_Male J23
U 1 1 68022F84
P 10950 8800
F 0 "J23" H 11056 8978 50  0000 C CNN
F 1 "TESTPOINT" H 11056 8887 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 10950 8800 50  0001 C CNN
F 3 "~" H 10950 8800 50  0001 C CNN
	1    10950 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11150 8800 11700 8800
Text Label 11350 8800 0    50   ~ 0
OE245
$Comp
L Device:R_Pack04_SIP RN1
U 1 1 68D1BF38
P 2750 2150
F 0 "RN1" V 2708 2355 50  0000 L CNN
F 1 "Resistor net 56 ohm" V 2100 1700 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP8" V 3425 2150 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2750 2150 50  0001 C CNN
	1    2750 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3900 2000 3900
Wire Wire Line
	1450 4100 2000 4100
$Comp
L Device:R_Pack04_SIP RN2
U 1 1 69730444
P 2750 3400
F 0 "RN2" V 2708 3605 50  0000 L CNN
F 1 "Resistor net 56 ohm" V 2100 3050 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP8" V 3425 3400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2750 3400 50  0001 C CNN
	1    2750 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 4200 2000 4200
Wire Wire Line
	1450 4300 2000 4300
Wire Wire Line
	1450 4000 2000 4000
Connection ~ 2100 7000
Wire Wire Line
	2550 1650 2300 1650
Wire Wire Line
	2550 1750 2300 1750
Wire Wire Line
	2550 1950 2300 1950
Wire Wire Line
	2550 2050 2300 2050
Wire Wire Line
	2550 2250 2300 2250
Wire Wire Line
	2550 2350 2300 2350
Wire Wire Line
	2550 2550 2300 2550
Wire Wire Line
	2550 2650 2300 2650
Wire Wire Line
	2550 2900 2300 2900
Wire Wire Line
	2550 3000 2300 3000
Wire Wire Line
	2550 3200 2300 3200
Wire Wire Line
	2550 3300 2300 3300
Wire Wire Line
	2550 3500 2300 3500
Wire Wire Line
	2550 3600 2300 3600
Wire Wire Line
	2550 3800 2300 3800
Wire Wire Line
	2550 3900 2300 3900
$Comp
L Device:R_Pack04_SIP RN15
U 1 1 6B78C714
P 2750 4650
F 0 "RN15" V 2708 4855 50  0000 L CNN
F 1 "Resistor net 56 ohm" V 2799 4855 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP8" V 3425 4650 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2750 4650 50  0001 C CNN
	1    2750 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4150 2300 4150
Wire Wire Line
	2550 4250 2300 4250
Wire Wire Line
	2550 4450 2300 4450
Wire Wire Line
	2550 4550 2300 4550
Wire Wire Line
	2550 4750 2300 4750
Wire Wire Line
	2550 4850 2300 4850
Wire Wire Line
	2550 5050 2300 5050
Wire Wire Line
	2550 5150 2300 5150
$Comp
L Device:R_Pack04_SIP RN16
U 1 1 6B8627C7
P 4000 5600
F 0 "RN16" V 3958 5805 50  0000 L CNN
F 1 "Resistor net 56 ohm" V 4049 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP8" V 4675 5600 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 4000 5600 50  0001 C CNN
	1    4000 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 5100 3550 5100
Wire Wire Line
	3800 5200 3550 5200
Wire Wire Line
	3800 5400 3550 5400
Wire Wire Line
	3800 5500 3550 5500
Wire Wire Line
	3800 5700 3550 5700
Wire Wire Line
	3800 5800 3550 5800
Wire Wire Line
	3800 6000 3550 6000
Wire Wire Line
	3800 6100 3550 6100
Text Label 2350 1650 0    50   ~ 0
BD0
Text Label 2350 2900 0    50   ~ 0
BD1
Text Label 2350 1950 0    50   ~ 0
BD2
Text Label 2350 3200 0    50   ~ 0
BD3
Text Label 2350 3500 0    50   ~ 0
BD5
Text Label 2350 3800 0    50   ~ 0
BD7
Text Label 2350 2250 0    50   ~ 0
BD4
Text Label 2350 2550 0    50   ~ 0
BD6
Text Label 2350 4150 0    50   ~ 0
BD8
Text Label 3600 5100 0    50   ~ 0
BD9
Text Label 2350 4450 0    50   ~ 0
BD10
Text Label 2350 4750 0    50   ~ 0
BD12
Text Label 2350 5050 0    50   ~ 0
BD14
Text Label 3600 5400 0    50   ~ 0
BD11
Text Label 3600 5700 0    50   ~ 0
BD13
Text Label 3600 6000 0    50   ~ 0
BD15
Text Label 5500 6000 0    50   ~ 0
RD8
Text Label 5500 6100 0    50   ~ 0
RD9
Text Label 5500 6200 0    50   ~ 0
RD10
Text Label 5500 6300 0    50   ~ 0
RD11
Text Label 5500 6400 0    50   ~ 0
RD12
Text Label 5500 6500 0    50   ~ 0
RD13
Text Label 5500 6600 0    50   ~ 0
RD14
Text Label 5500 6700 0    50   ~ 0
RD15
Text Label 4400 4950 0    50   ~ 0
RD7
Text Label 4400 4850 0    50   ~ 0
RD6
Text Label 4400 4750 0    50   ~ 0
RD5
Text Label 4400 4650 0    50   ~ 0
RD4
Text Label 4400 4550 0    50   ~ 0
RD3
Text Label 4400 4450 0    50   ~ 0
RD2
Text Label 4400 4350 0    50   ~ 0
RD1
Text Label 4400 4250 0    50   ~ 0
RD0
Text Label 3600 6100 0    50   ~ 0
RD15
Text Label 3600 5800 0    50   ~ 0
RD13
Text Label 3600 5500 0    50   ~ 0
RD11
Text Label 3600 5200 0    50   ~ 0
RD9
Text Label 2350 5150 0    50   ~ 0
RD14
Text Label 2350 4850 0    50   ~ 0
RD12
Text Label 2350 4550 0    50   ~ 0
RD10
Text Label 2350 4250 0    50   ~ 0
RD8
Text Label 2350 3900 0    50   ~ 0
RD7
Text Label 2350 3600 0    50   ~ 0
RD5
Text Label 2350 3300 0    50   ~ 0
RD3
Text Label 2350 3000 0    50   ~ 0
RD1
Text Label 2350 1750 0    50   ~ 0
RD0
Text Label 2350 2050 0    50   ~ 0
RD2
Text Label 2350 2350 0    50   ~ 0
RD4
Text Label 2350 2650 0    50   ~ 0
RD6
Wire Wire Line
	4800 6950 4800 6900
$Comp
L Connector:Conn_01x01_Male J28
U 1 1 61D14167
P 8900 9400
F 0 "J28" H 9006 9578 50  0000 C CNN
F 1 "TESTPOINT" H 9006 9487 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8900 9400 50  0001 C CNN
F 3 "~" H 8900 9400 50  0001 C CNN
	1    8900 9400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J27
U 1 1 61D1465E
P 8900 9150
F 0 "J27" H 9006 9328 50  0000 C CNN
F 1 "TESTPOINT" H 9006 9237 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8900 9150 50  0001 C CNN
F 3 "~" H 8900 9150 50  0001 C CNN
	1    8900 9150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J26
U 1 1 61DF0FDD
P 8900 8900
F 0 "J26" H 9006 9078 50  0000 C CNN
F 1 "TESTPOINT" H 9006 8987 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8900 8900 50  0001 C CNN
F 3 "~" H 8900 8900 50  0001 C CNN
	1    8900 8900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J25
U 1 1 61DF1170
P 8900 8650
F 0 "J25" H 9006 8828 50  0000 C CNN
F 1 "TESTPOINT" H 9006 8737 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8900 8650 50  0001 C CNN
F 3 "~" H 8900 8650 50  0001 C CNN
	1    8900 8650
	1    0    0    -1  
$EndComp
$Comp
L IPCMemoryExpansionBoard-rescue:GND-power #PWR0104
U 1 1 61DF127E
P 9350 9550
F 0 "#PWR0104" H 9350 9300 50  0001 C CNN
F 1 "GND" H 9355 9377 50  0000 C CNN
F 2 "" H 9350 9550 50  0001 C CNN
F 3 "" H 9350 9550 50  0001 C CNN
	1    9350 9550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 9550 9350 9400
Wire Wire Line
	9350 8650 9100 8650
Wire Wire Line
	9100 8900 9350 8900
Connection ~ 9350 8900
Wire Wire Line
	9350 8900 9350 8650
Wire Wire Line
	9100 9150 9350 9150
Connection ~ 9350 9150
Wire Wire Line
	9350 9150 9350 8900
Wire Wire Line
	9100 9400 9350 9400
Connection ~ 9350 9400
Wire Wire Line
	9350 9400 9350 9150
$Comp
L Connector:Conn_01x01_Male J24
U 1 1 6216A69B
P 7550 10300
F 0 "J24" H 7656 10478 50  0000 C CNN
F 1 "TESTPOINT" H 7656 10387 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7550 10300 50  0001 C CNN
F 3 "~" H 7550 10300 50  0001 C CNN
	1    7550 10300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J29
U 1 1 6216AAFF
P 9550 10300
F 0 "J29" H 9550 10400 50  0000 C CNN
F 1 "TESTPOINT" H 9600 10200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9550 10300 50  0001 C CNN
F 3 "~" H 9550 10300 50  0001 C CNN
	1    9550 10300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 10300 9150 10300
Wire Wire Line
	7750 10300 7950 10300
$EndSCHEMATC
