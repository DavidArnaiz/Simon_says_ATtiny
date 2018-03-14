EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Simon_says_Attiny-cache
EELAYER 25 0
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
Text Notes 7400 7500 0    60   ~ 0
Simon Says Attiny\n
Text Notes 8150 7650 0    60   ~ 0
26/01/2018
Text Notes 10600 7650 0    60   ~ 0
Rev 1
Text Notes 7400 7250 0    60   ~ 0
1/1
Text Notes 9150 6950 0    197  ~ 0
ElectronPlant
Text Notes 7100 6950 0    197  ~ 0
Main Circuit
$Comp
L ATTINY45-20PU U1
U 1 1 5A6B746A
P 6850 2650
F 0 "U1" H 5700 3050 50  0000 C CNN
F 1 "ATTINY45-20PU" H 7850 2250 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 7850 2650 50  0001 C CIN
F 3 "" H 6850 2650 50  0001 C CNN
	1    6850 2650
	1    0    0    -1  
$EndComp
Text Notes 7050 1800 0    197  ~ 0
Microcontroller
$Comp
L GND #PWR01
U 1 1 5A6B757F
P 8450 3150
F 0 "#PWR01" H 8450 2900 50  0001 C CNN
F 1 "GND" H 8450 3000 50  0000 C CNN
F 2 "" H 8450 3150 50  0001 C CNN
F 3 "" H 8450 3150 50  0001 C CNN
	1    8450 3150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5A6B7595
P 8450 2200
F 0 "#PWR02" H 8450 2050 50  0001 C CNN
F 1 "VCC" H 8450 2350 50  0000 C CNN
F 2 "" H 8450 2200 50  0001 C CNN
F 3 "" H 8450 2200 50  0001 C CNN
	1    8450 2200
	1    0    0    -1  
$EndComp
Text Label 5000 2800 0    39   ~ 0
SPEAKER_R
Text Label 5000 2700 0    39   ~ 0
BUTTONS
Text Label 5000 2900 0    39   ~ 0
N_RESET
Text Label 5000 2600 0    39   ~ 0
LED1
Text Label 5000 2500 0    39   ~ 0
LED2
Text Label 5000 2400 0    39   ~ 0
LED3
Text Notes 9150 2250 0    39   ~ 0
Bypass capacitor
$Comp
L C C2
U 1 1 5A6B7719
P 9400 2850
F 0 "C2" H 9425 2950 50  0000 L CNN
F 1 "0.1uF" H 9425 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9438 2700 50  0001 C CNN
F 3 "" H 9400 2850 50  0001 C CNN
	1    9400 2850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 5A6B7760
P 9400 2600
F 0 "#PWR03" H 9400 2450 50  0001 C CNN
F 1 "VCC" H 9400 2750 50  0000 C CNN
F 2 "" H 9400 2600 50  0001 C CNN
F 3 "" H 9400 2600 50  0001 C CNN
	1    9400 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A6B7775
P 9400 3100
F 0 "#PWR04" H 9400 2850 50  0001 C CNN
F 1 "GND" H 9400 2950 50  0000 C CNN
F 2 "" H 9400 3100 50  0001 C CNN
F 3 "" H 9400 3100 50  0001 C CNN
	1    9400 3100
	1    0    0    -1  
$EndComp
Text Notes 8650 3400 0    39   ~ 0
NOTE: place as close as possible to the microcontroller
$Comp
L GND #PWR05
U 1 1 5A6B7BB8
P 5750 5700
F 0 "#PWR05" H 5750 5450 50  0001 C CNN
F 1 "GND" H 5750 5550 50  0000 C CNN
F 2 "" H 5750 5700 50  0001 C CNN
F 3 "" H 5750 5700 50  0001 C CNN
	1    5750 5700
	1    0    0    -1  
$EndComp
$Comp
L Buzzer BZ1
U 1 1 5A6B7BE5
P 6000 5500
F 0 "BZ1" H 6150 5550 50  0000 L CNN
F 1 "Buzzer" H 6150 5450 50  0000 L CNN
F 2 "Buzzers_Beepers:Buzzer_12x9.5RM7.6" V 5975 5600 50  0001 C CNN
F 3 "" V 5975 5600 50  0001 C CNN
	1    6000 5500
	1    0    0    -1  
$EndComp
Text Label 5400 5400 0    39   ~ 0
SPEAKER
Text Notes 5150 5050 0    197  ~ 0
Buzzer
$Comp
L SW_Push B1
U 1 1 5A6B832B
P 2000 5000
F 0 "B1" H 2050 5100 50  0000 L CNN
F 1 "SW_Push" H 2000 4940 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2000 5200 50  0001 C CNN
F 3 "" H 2000 5200 50  0001 C CNN
	1    2000 5000
	1    0    0    -1  
$EndComp
$Comp
L SW_Push B2
U 1 1 5A6B83AE
P 2000 5500
F 0 "B2" H 2050 5600 50  0000 L CNN
F 1 "SW_Push" H 2000 5440 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2000 5700 50  0001 C CNN
F 3 "" H 2000 5700 50  0001 C CNN
	1    2000 5500
	1    0    0    -1  
$EndComp
$Comp
L SW_Push B3
U 1 1 5A6B847C
P 2000 6000
F 0 "B3" H 2050 6100 50  0000 L CNN
F 1 "SW_Push" H 2000 5940 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2000 6200 50  0001 C CNN
F 3 "" H 2000 6200 50  0001 C CNN
	1    2000 6000
	1    0    0    -1  
$EndComp
$Comp
L SW_Push B4
U 1 1 5A6B84F0
P 2000 6500
F 0 "B4" H 2050 6600 50  0000 L CNN
F 1 "SW_Push" H 2000 6440 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2000 6700 50  0001 C CNN
F 3 "" H 2000 6700 50  0001 C CNN
	1    2000 6500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A6B878C
P 2650 5500
F 0 "R1" V 2730 5500 50  0000 C CNN
F 1 "10k" V 2650 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2580 5500 50  0001 C CNN
F 3 "" H 2650 5500 50  0001 C CNN
	1    2650 5500
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A6B8809
P 2650 6000
F 0 "R2" V 2730 6000 50  0000 C CNN
F 1 "20k" V 2650 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2580 6000 50  0001 C CNN
F 3 "" H 2650 6000 50  0001 C CNN
	1    2650 6000
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5A6B8870
P 2650 6500
F 0 "R3" V 2730 6500 50  0000 C CNN
F 1 "30k" V 2650 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2580 6500 50  0001 C CNN
F 3 "" H 2650 6500 50  0001 C CNN
	1    2650 6500
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A6B8AEB
P 3000 5250
F 0 "R4" V 3080 5250 50  0000 C CNN
F 1 "51k" V 3000 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2930 5250 50  0001 C CNN
F 3 "" H 3000 5250 50  0001 C CNN
	1    3000 5250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A6B8B56
P 3000 5750
F 0 "R5" V 3080 5750 50  0000 C CNN
F 1 "10k" V 3000 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2930 5750 50  0001 C CNN
F 3 "" H 3000 5750 50  0001 C CNN
	1    3000 5750
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5A6B8B99
P 3000 6250
F 0 "R6" V 3080 6250 50  0000 C CNN
F 1 "10k" V 3000 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2930 6250 50  0001 C CNN
F 3 "" H 3000 6250 50  0001 C CNN
	1    3000 6250
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A6B8BF6
P 3000 6800
F 0 "R7" V 3080 6800 50  0000 C CNN
F 1 "10k" V 3000 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2930 6800 50  0001 C CNN
F 3 "" H 3000 6800 50  0001 C CNN
	1    3000 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A6B8C51
P 3000 7100
F 0 "#PWR06" H 3000 6850 50  0001 C CNN
F 1 "GND" H 3000 6950 50  0000 C CNN
F 2 "" H 3000 7100 50  0001 C CNN
F 3 "" H 3000 7100 50  0001 C CNN
	1    3000 7100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5A6B8CEC
P 1350 4650
F 0 "#PWR07" H 1350 4500 50  0001 C CNN
F 1 "VCC" H 1350 4800 50  0000 C CNN
F 2 "" H 1350 4650 50  0001 C CNN
F 3 "" H 1350 4650 50  0001 C CNN
	1    1350 4650
	1    0    0    -1  
$EndComp
Text Label 3650 5000 0    39   ~ 0
BUTTONS
Text Notes 1500 4450 0    197  ~ 0
Analog buttons
$Comp
L C C1
U 1 1 5A6B940C
P 4400 2950
F 0 "C1" H 4425 3050 50  0000 L CNN
F 1 "33nF" H 4425 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4438 2800 50  0001 C CNN
F 3 "" H 4400 2950 50  0001 C CNN
	1    4400 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A6B94E4
P 4400 3150
F 0 "#PWR08" H 4400 2900 50  0001 C CNN
F 1 "GND" H 4400 3000 50  0000 C CNN
F 2 "" H 4400 3150 50  0001 C CNN
F 3 "" H 4400 3150 50  0001 C CNN
	1    4400 3150
	1    0    0    -1  
$EndComp
$Comp
L SW_Push B5
U 1 1 5A6B98B6
P 6050 7150
F 0 "B5" H 6100 7250 50  0000 L CNN
F 1 "SW_Push" H 6050 7090 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 6050 7350 50  0001 C CNN
F 3 "" H 6050 7350 50  0001 C CNN
	1    6050 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A6B992B
P 6400 7300
F 0 "#PWR09" H 6400 7050 50  0001 C CNN
F 1 "GND" H 6400 7150 50  0000 C CNN
F 2 "" H 6400 7300 50  0001 C CNN
F 3 "" H 6400 7300 50  0001 C CNN
	1    6400 7300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 5A6B9972
P 5650 6450
F 0 "#PWR010" H 5650 6300 50  0001 C CNN
F 1 "VCC" H 5650 6600 50  0000 C CNN
F 2 "" H 5650 6450 50  0001 C CNN
F 3 "" H 5650 6450 50  0001 C CNN
	1    5650 6450
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5A6B99B9
P 5650 6800
F 0 "R9" V 5730 6800 50  0000 C CNN
F 1 "10k" V 5650 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5580 6800 50  0001 C CNN
F 3 "" H 5650 6800 50  0001 C CNN
	1    5650 6800
	1    0    0    -1  
$EndComp
Text Label 5000 7150 0    39   ~ 0
N_RESET
Text Notes 5300 6150 0    197  ~ 0
Reset
$Comp
L LED D1
U 1 1 5A6BA710
P 9450 4700
F 0 "D1" H 9450 4800 50  0000 C CNN
F 1 "RED_LED" H 9450 4550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9450 4700 50  0001 C CNN
F 3 "" H 9450 4700 50  0001 C CNN
	1    9450 4700
	0    -1   -1   0   
$EndComp
$Comp
L LED D3
U 1 1 5A6BA901
P 10250 4700
F 0 "D3" H 10250 4800 50  0000 C CNN
F 1 "GREEN_LED" H 10250 4550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 10250 4700 50  0001 C CNN
F 3 "" H 10250 4700 50  0001 C CNN
	1    10250 4700
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 5A6BAA4B
P 10250 5900
F 0 "D4" H 10250 6000 50  0000 C CNN
F 1 "YELLOW_LED" H 10250 5750 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 10250 5900 50  0001 C CNN
F 3 "" H 10250 5900 50  0001 C CNN
	1    10250 5900
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 5A6BAAE2
P 9450 5900
F 0 "D2" H 9450 6000 50  0000 C CNN
F 1 "BLUE_LED" H 9450 5750 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 9450 5900 50  0001 C CNN
F 3 "" H 9450 5900 50  0001 C CNN
	1    9450 5900
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 5A6BAEB9
P 9450 5100
F 0 "R10" V 9530 5100 50  0000 C CNN
F 1 "47" V 9450 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9380 5100 50  0001 C CNN
F 3 "" H 9450 5100 50  0001 C CNN
	1    9450 5100
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5A6BAF22
P 10250 5100
F 0 "R12" V 10330 5100 50  0000 C CNN
F 1 "47" V 10250 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10180 5100 50  0001 C CNN
F 3 "" H 10250 5100 50  0001 C CNN
	1    10250 5100
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5A6BAFEF
P 9450 5500
F 0 "R11" V 9530 5500 50  0000 C CNN
F 1 "47" V 9450 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9380 5500 50  0001 C CNN
F 3 "" H 9450 5500 50  0001 C CNN
	1    9450 5500
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5A6BB048
P 10250 5500
F 0 "R13" V 10330 5500 50  0000 C CNN
F 1 "47" V 10250 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10180 5500 50  0001 C CNN
F 3 "" H 10250 5500 50  0001 C CNN
	1    10250 5500
	1    0    0    -1  
$EndComp
Text Label 8850 4400 0    39   ~ 0
LED1
Text Label 8850 5300 0    39   ~ 0
LED2
Text Label 8900 6150 0    39   ~ 0
LED3
Text Notes 9200 4300 0    197  ~ 0
LEDs
$Comp
L Conn_01x02 J1
U 1 1 5A6BCAE5
P 2250 2700
F 0 "J1" H 2250 2800 50  0000 C CNN
F 1 "AA_Battery" H 2250 2500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch1.27mm" H 2250 2700 50  0001 C CNN
F 3 "" H 2250 2700 50  0001 C CNN
	1    2250 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5A6BCB48
P 6800 4150
F 0 "#PWR011" H 6800 4000 50  0001 C CNN
F 1 "VCC" H 6800 4300 50  0000 C CNN
F 2 "" H 6800 4150 50  0001 C CNN
F 3 "" H 6800 4150 50  0001 C CNN
	1    6800 4150
	1    0    0    -1  
$EndComp
Text Notes 1000 2100 0    197  ~ 0
Battery connector
Text Notes 6100 4350 0    39   ~ 0
ON/OFF switch
Text Notes 5500 5200 0    39   ~ 0
Mute
Text Notes 3900 1100 0    276  ~ 0
Simon Says Attiny
$Comp
L PWR_FLAG #FLG012
U 1 1 5A6BD57C
P 2150 3600
F 0 "#FLG012" H 2150 3675 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 3750 50  0000 C CNN
F 2 "" H 2150 3600 50  0001 C CNN
F 3 "" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG013
U 1 1 5A6BD7D4
P 2450 3700
F 0 "#FLG013" H 2450 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 2450 3850 50  0000 C CNN
F 2 "" H 2450 3700 50  0001 C CNN
F 3 "" H 2450 3700 50  0001 C CNN
	1    2450 3700
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR014
U 1 1 5A6BD822
P 2450 3600
F 0 "#PWR014" H 2450 3450 50  0001 C CNN
F 1 "VCC" H 2450 3750 50  0000 C CNN
F 2 "" H 2450 3600 50  0001 C CNN
F 3 "" H 2450 3600 50  0001 C CNN
	1    2450 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5A6BD870
P 2150 3700
F 0 "#PWR015" H 2150 3450 50  0001 C CNN
F 1 "GND" H 2150 3550 50  0000 C CNN
F 2 "" H 2150 3700 50  0001 C CNN
F 3 "" H 2150 3700 50  0001 C CNN
	1    2150 3700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5A6C7521
P 2750 2700
F 0 "J2" H 2750 2800 50  0000 C CNN
F 1 "Cell_Battery" H 2750 2500 50  0000 C CNN
F 2 "Battery_Holders:Keystone_103_1x20mm-CoinCell" H 2750 2700 50  0001 C CNN
F 3 "" H 2750 2700 50  0001 C CNN
	1    2750 2700
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x02 SW1
U 1 1 5A6C78D6
P 5900 4500
F 0 "SW1" H 5900 4750 50  0000 C CNN
F 1 "SW_DIP_x02" H 5900 4350 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_DIP_x2_W7.62mm_Slide" H 5900 4500 50  0001 C CNN
F 3 "" H 5900 4500 50  0001 C CNN
	1    5900 4500
	1    0    0    -1  
$EndComp
Wire Notes Line
	9050 7150 9050 6550
Wire Wire Line
	8200 2400 8450 2400
Wire Wire Line
	8450 2400 8450 2200
Wire Wire Line
	8200 2900 8450 2900
Wire Wire Line
	8450 2900 8450 3150
Wire Wire Line
	5500 2900 4950 2900
Wire Wire Line
	5500 2800 4950 2800
Wire Wire Line
	4400 2700 5500 2700
Wire Wire Line
	5500 2600 4950 2600
Wire Wire Line
	5500 2500 4950 2500
Wire Wire Line
	5500 2400 4950 2400
Wire Wire Line
	9400 3100 9400 3000
Wire Wire Line
	9400 2600 9400 2700
Wire Wire Line
	5900 5600 5750 5600
Wire Wire Line
	5750 5600 5750 5700
Wire Wire Line
	5350 5400 5900 5400
Wire Wire Line
	1350 4650 1350 6500
Wire Wire Line
	1350 5000 1800 5000
Wire Wire Line
	1350 5500 1800 5500
Connection ~ 1350 5000
Wire Wire Line
	1350 6000 1800 6000
Connection ~ 1350 5500
Wire Wire Line
	1350 6500 1800 6500
Connection ~ 1350 6000
Wire Wire Line
	2200 5000 3950 5000
Wire Wire Line
	3000 5100 3000 5000
Connection ~ 3000 5000
Wire Wire Line
	3000 5400 3000 5600
Wire Wire Line
	3000 5900 3000 6100
Wire Wire Line
	3000 6400 3000 6650
Wire Wire Line
	3000 6950 3000 7100
Wire Wire Line
	2800 6500 3000 6500
Connection ~ 3000 6500
Wire Wire Line
	2500 6500 2200 6500
Wire Wire Line
	2200 6000 2500 6000
Wire Wire Line
	2800 6000 3000 6000
Connection ~ 3000 6000
Wire Wire Line
	2800 5500 3000 5500
Connection ~ 3000 5500
Wire Wire Line
	2500 5500 2200 5500
Wire Wire Line
	4400 2800 4400 2700
Wire Wire Line
	6250 7150 6400 7150
Wire Wire Line
	6400 7150 6400 7300
Wire Wire Line
	5650 6650 5650 6450
Wire Wire Line
	4900 7150 5850 7150
Wire Wire Line
	5650 7150 5650 6950
Connection ~ 5650 7150
Wire Wire Line
	10250 4400 10250 4550
Wire Wire Line
	8800 4400 10250 4400
Wire Wire Line
	9450 4550 9450 4400
Connection ~ 9450 4400
Wire Wire Line
	10250 4950 10250 4850
Wire Wire Line
	9450 4950 9450 4850
Wire Wire Line
	9450 5250 9450 5350
Wire Wire Line
	10250 5250 10250 5350
Wire Wire Line
	10250 5750 10250 5650
Wire Wire Line
	8800 5300 10250 5300
Connection ~ 9450 5300
Connection ~ 10250 5300
Wire Wire Line
	10250 6150 10250 6050
Wire Wire Line
	8800 6150 10250 6150
Connection ~ 9450 6150
Wire Wire Line
	6800 4400 6800 4150
Wire Wire Line
	2450 3700 2450 3600
Wire Wire Line
	2150 3700 2150 3600
Wire Wire Line
	4400 3150 4400 3100
$Comp
L R R8
U 1 1 5A6C80D8
P 5250 4500
F 0 "R8" V 5330 4500 50  0000 C CNN
F 1 "100" V 5250 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5180 4500 50  0001 C CNN
F 3 "" H 5250 4500 50  0001 C CNN
	1    5250 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4500 5400 4500
Wire Wire Line
	5100 4500 4700 4500
Wire Wire Line
	6200 4500 7450 4500
Wire Wire Line
	6200 4400 6800 4400
Wire Wire Line
	4700 4400 5600 4400
Text Notes 6100 4600 0    39   ~ 0
Unmute/mute switch
Text Label 4750 4400 0    39   ~ 0
BAT_INPUT
Text Label 4750 4500 0    39   ~ 0
SPEAKER_R
Text Label 7150 4500 0    39   ~ 0
SPEAKER
Text Notes 5350 3900 0    197  ~ 0
Switches
Wire Wire Line
	9450 5750 9450 5650
Wire Wire Line
	9450 6150 9450 6050
$Comp
L GND #PWR016
U 1 1 5A6E1BAA
P 1650 3000
F 0 "#PWR016" H 1650 2750 50  0001 C CNN
F 1 "GND" H 1650 2850 50  0000 C CNN
F 2 "" H 1650 3000 50  0001 C CNN
F 3 "" H 1650 3000 50  0001 C CNN
	1    1650 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2800 2550 2950
Wire Wire Line
	2550 2950 1650 2950
Wire Wire Line
	1650 2800 1650 3000
Wire Wire Line
	1650 2800 2050 2800
Connection ~ 1650 2950
Wire Wire Line
	2550 2550 2550 2700
Wire Wire Line
	1650 2550 2550 2550
Wire Wire Line
	2050 2700 1950 2700
Wire Wire Line
	1950 2700 1950 2550
Connection ~ 1950 2550
Text Label 1650 2550 0    39   ~ 0
BAT_INPUT
$EndSCHEMATC
