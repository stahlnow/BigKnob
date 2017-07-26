EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:stahllabs
LIBS:BigKnob-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Big Knob"
Date "2017-04-27"
Rev "1"
Comp "stahllabs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L NSJ12HF-1 J1
U 1 1 58DAE481
P 2600 2400
F 0 "J1" H 2600 2700 60  0000 C CNN
F 1 "NSJ12HF-1" H 2650 2000 60  0000 C CNN
F 2 "stahllabs:NSJ12HF-1" H 2950 2550 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 2650 1900 21  0001 C BIN
	1    2600 2400
	1    0    0    -1  
$EndComp
$Comp
L NSJ12HF-1 J1
U 2 1 58DAE508
P 2600 3300
F 0 "J1" H 2600 3600 60  0000 C CNN
F 1 "NSJ12HF-1" H 2650 2900 60  0000 C CNN
F 2 "stahllabs:NSJ12HF-1" H 2950 3450 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 2650 2800 21  0001 C BIN
	2    2600 3300
	1    0    0    -1  
$EndComp
$Comp
L NSJ12HF-1 J2
U 1 1 58DB1B94
P 2600 4450
F 0 "J2" H 2600 4750 60  0000 C CNN
F 1 "NSJ12HF-1" H 2650 4050 60  0000 C CNN
F 2 "stahllabs:NSJ12HF-1" H 2950 4600 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 2650 3950 21  0001 C BIN
	1    2600 4450
	1    0    0    -1  
$EndComp
$Comp
L NSJ12HF-1 J2
U 2 1 58DB1C87
P 2600 5350
F 0 "J2" H 2600 5650 60  0000 C CNN
F 1 "NSJ12HF-1" H 2650 4950 60  0000 C CNN
F 2 "stahllabs:NSJ12HF-1" H 2950 5500 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 2650 4850 21  0001 C BIN
	2    2600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2700 3500 2700
Wire Wire Line
	3150 3600 3500 3600
Wire Wire Line
	3150 4750 3500 4750
Text GLabel 3500 2700 2    60   Input ~ 0
CHASSIS_GND
Text GLabel 3500 3600 2    60   Input ~ 0
CHASSIS_GND
Text GLabel 3500 4750 2    60   Input ~ 0
CHASSIS_GND
Wire Wire Line
	3150 5650 3500 5650
Text GLabel 3500 5650 2    60   Input ~ 0
CHASSIS_GND
Wire Notes Line
	1400 4000 1400 5850
Wire Notes Line
	1400 5850 4350 5850
Wire Notes Line
	4350 5850 4350 4000
Wire Notes Line
	4350 4000 1400 4000
Wire Notes Line
	1400 3850 4350 3850
Wire Notes Line
	4350 3850 4350 1850
Wire Notes Line
	4350 1850 1400 1850
Wire Notes Line
	1400 1850 1400 3850
Text Notes 1450 2050 0    99   Italic 20
INPUT A
Text Notes 1450 4200 0    99   Italic 20
INPUT B
$Comp
L MB2185SS1G06 S1
U 1 1 58E15A20
P 5250 3900
F 0 "S1" V 4700 3950 60  0000 C CNN
F 1 "MB2185SS1G06" V 5850 3950 60  0000 C CNN
F 2 "stahllabs:MB2185SS1G06" H 5400 3950 60  0001 C CNN
F 3 "" H 5400 3950 60  0001 C CNN
	1    5250 3900
	0    1    1    0   
$EndComp
$Comp
L NSJ12HF-1 J3
U 1 1 58E15C9F
P 8750 3700
F 0 "J3" H 8800 3300 60  0000 C CNN
F 1 "NSJ12HF-1" H 8800 4000 60  0000 C CNN
F 2 "stahllabs:NSJ12HF-1" H 9100 3850 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 8800 3200 21  0001 C BIN
	1    8750 3700
	-1   0    0    1   
$EndComp
$Comp
L NSJ12HF-1 J3
U 2 1 58E15D3A
P 8750 4700
F 0 "J3" H 8800 4300 60  0000 C CNN
F 1 "NSJ12HF-1" H 8750 5000 60  0000 C CNN
F 2 "stahllabs:NSJ12HF-1" H 9100 4850 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 8800 4200 21  0001 C BIN
	2    8750 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 4350 7350 4600
Wire Wire Line
	7350 4600 8200 4600
Wire Wire Line
	3150 4550 4550 4550
Wire Wire Line
	4550 3600 4550 6500
Text Notes 9350 3550 0    60   Italic 12
LEFT
Text Notes 1800 2650 0    60   Italic 12
LEFT
Text Notes 1750 3550 0    60   Italic 12
RIGHT
Wire Wire Line
	8050 4400 8200 4400
Wire Wire Line
	8200 3900 8050 3900
Wire Wire Line
	8050 4900 8200 4900
Text Notes 9350 4450 0    60   Italic 12
RIGHT
Wire Wire Line
	3150 2500 5000 2500
Wire Wire Line
	5000 2500 5000 3500
Wire Wire Line
	4550 3600 5000 3600
Text Notes 1800 4700 0    60   Italic 12
LEFT
Text Notes 1750 5600 0    60   Italic 12
RIGHT
Wire Wire Line
	3150 2350 4900 2350
Wire Wire Line
	4900 2350 4900 3750
Wire Wire Line
	4900 3750 5000 3750
Wire Wire Line
	3150 4400 4650 4400
Wire Wire Line
	4650 4400 4650 3850
Wire Wire Line
	4650 3850 5000 3850
Wire Wire Line
	3150 2200 3300 2200
Wire Wire Line
	3300 2200 3300 2700
Connection ~ 3300 2700
Wire Wire Line
	3150 4250 3300 4250
Wire Wire Line
	3300 4250 3300 4750
Connection ~ 3300 4750
Wire Wire Line
	3150 5150 3300 5150
Wire Wire Line
	3300 5150 3300 5650
Connection ~ 3300 5650
Wire Wire Line
	3150 3100 3300 3100
Wire Wire Line
	3300 3100 3300 3600
Connection ~ 3300 3600
Wire Wire Line
	8050 3400 8200 3400
Text GLabel 8050 3400 0    60   Input ~ 0
CHASSIS_GND
Wire Wire Line
	3150 3400 4800 3400
Wire Wire Line
	4800 3400 4800 4000
Wire Wire Line
	4800 4000 5000 4000
Wire Wire Line
	3150 5450 4800 5450
Wire Wire Line
	4800 5450 4800 4100
Wire Wire Line
	4800 4100 5000 4100
Wire Wire Line
	3150 3250 4700 3250
Wire Wire Line
	4700 3250 4700 4250
Wire Wire Line
	4700 4250 5000 4250
Wire Wire Line
	3150 5300 4900 5300
Wire Notes Line
	7250 2750 9800 2750
Wire Notes Line
	7250 2750 7250 5050
Wire Notes Line
	7250 5050 9800 5050
Wire Notes Line
	9800 5050 9800 2750
Text Notes 7300 2950 0    99   Italic 20
OUTPUT
$Comp
L STEREO-JACK-SWITCHED-5-Pin J4
U 1 1 58F37A22
P 3300 6450
F 0 "J4" H 3000 6675 60  0000 C CNN
F 1 "STEREO-JACK-SWITCHED-5-Pin" H 3000 6125 60  0000 C CNN
F 2 "stahllabs:Stereo-Mini-Jack-Switched-TRS-5-Pin" H 3380 6625 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 3025 6025 21  0001 C BIN
	1    3300 6450
	1    0    0    -1  
$EndComp
Text GLabel 3500 6600 2    60   Input ~ 0
CHASSIS_GND
Wire Wire Line
	4550 6500 3300 6500
Connection ~ 4550 4550
Wire Wire Line
	4450 6350 4450 5450
Connection ~ 4450 5450
Wire Wire Line
	3300 6350 4450 6350
Wire Wire Line
	3300 6550 3450 6550
Wire Wire Line
	3450 6550 3500 6600
Wire Wire Line
	3500 6600 3500 6600
Wire Wire Line
	4900 5300 4900 4350
Wire Wire Line
	4900 4350 5000 4350
Wire Notes Line
	1400 6050 4350 6050
Wire Notes Line
	4350 6050 4350 6900
Wire Notes Line
	4350 6900 1400 6900
Wire Notes Line
	1400 6900 1400 6050
Text Notes 1450 6400 0    99   Italic 20
INPUT B\nmini jack
$Comp
L STEREO-JACK-SWITCHED-5-Pin J5
U 1 1 58F4A296
P 3300 1250
F 0 "J5" H 3100 1470 60  0000 C CNN
F 1 "STEREO-JACK-SWITCHED-5-Pin" H 3150 950 60  0000 C CNN
F 2 "stahllabs:Stereo-Mini-Jack-Switched-TRS-5-Pin" H 3330 1555 60  0001 C CNN
F 3 "http://www.neutrik.com/en/audio/plugs-and-jacks/stacking-jacks/nsj12hf-1" H 3190 930 21  0001 C BIN
	1    3300 1250
	1    0    0    -1  
$EndComp
Text GLabel 3500 1400 2    60   Input ~ 0
CHASSIS_GND
Wire Wire Line
	3300 1300 4450 1300
Wire Wire Line
	4450 1300 4450 2500
Connection ~ 4450 2500
Wire Wire Line
	3300 1150 4550 1150
Wire Wire Line
	4550 1150 4550 3400
Connection ~ 4550 3400
Wire Wire Line
	3300 1350 3450 1350
Wire Wire Line
	3450 1350 3500 1400
Wire Wire Line
	3500 1400 3500 1400
Wire Notes Line
	1400 1700 4350 1700
Wire Notes Line
	4350 1700 4350 950 
Wire Notes Line
	4350 950  1400 950 
Wire Notes Line
	1400 950  1400 1700
Text Notes 1450 1300 0    99   Italic 20
INPUT A\nmini jack
Text GLabel 6400 4750 2    60   Input ~ 0
CHASSIS_GND
$Comp
L PTD904-1015F-A104 R1
U 1 1 58FEAB86
P 6300 3050
F 0 "R1" H 6300 3300 20  0000 C CNN
F 1 "PTD904-1015F-A104" H 6300 2975 20  0000 C CNN
F 2 "stahllabs:PTD904-1015F-A104" H 6300 3050 60  0001 C CNN
F 3 "" H 6300 3050 60  0001 C CNN
	1    6300 3050
	0    1    1    0   
$EndComp
$Comp
L PTD904-1015F-A104 R1
U 2 1 58FEABBF
P 6300 3750
F 0 "R1" H 6300 4000 20  0000 C CNN
F 1 "PTD904-1015F-A104" H 6300 3675 20  0000 C CNN
F 2 "stahllabs:PTD904-1015F-A104" H 6300 3750 60  0001 C CNN
F 3 "" H 6300 3750 60  0001 C CNN
	2    6300 3750
	0    1    1    0   
$EndComp
$Comp
L PTD904-1015F-A104 R1
U 4 1 58FEAC80
P 6300 4950
F 0 "R1" H 6300 5200 20  0000 C CNN
F 1 "PTD904-1015F-A104" H 6300 4875 20  0000 C CNN
F 2 "stahllabs:PTD904-1015F-A104" H 6300 4950 60  0001 C CNN
F 3 "" H 6300 4950 60  0001 C CNN
	4    6300 4950
	0    1    1    0   
$EndComp
Wire Notes Line
	4950 3150 5700 3150
Wire Notes Line
	5700 3150 5700 4600
Wire Notes Line
	5700 4600 4950 4600
Wire Notes Line
	4950 4600 4950 3150
Text Notes 5050 3300 0    99   Italic 20
SWITCH
Wire Notes Line
	5900 2500 7150 2500
Wire Notes Line
	5900 2500 5900 5250
Text Notes 6000 2700 0    99   Italic 20
VOLUME
$Comp
L PTD904-1015F-A104 R1
U 3 1 58FEAC45
P 6300 4350
F 0 "R1" H 6300 4600 20  0000 C CNN
F 1 "PTD904-1015F-A104" H 6300 4275 20  0000 C CNN
F 2 "stahllabs:PTD904-1015F-A104" H 6300 4350 60  0001 C CNN
F 3 "" H 6300 4350 60  0001 C CNN
	3    6300 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 2850 6300 2850
Wire Wire Line
	6500 3050 7350 3050
Wire Wire Line
	5550 4300 6000 4300
Wire Wire Line
	6000 4300 6000 5150
Wire Wire Line
	6400 3550 6300 3550
Wire Notes Line
	7150 2500 7150 5250
Wire Wire Line
	7850 3750 7850 3750
Wire Wire Line
	7350 4350 6500 4350
Wire Notes Line
	7150 5250 5900 5250
Wire Wire Line
	6100 3800 6100 3800
Wire Wire Line
	5550 4050 6100 4050
Wire Wire Line
	6100 4050 6100 4550
Wire Wire Line
	6100 4550 6300 4550
Wire Wire Line
	6000 5150 6300 5150
Wire Wire Line
	6400 4150 6300 4150
Wire Wire Line
	6300 4750 6400 4750
Wire Wire Line
	6500 3750 8200 3750
Wire Wire Line
	6100 3550 5550 3550
Wire Wire Line
	6500 4950 7350 4950
Wire Wire Line
	7350 4950 7350 4750
Wire Wire Line
	7350 4750 8200 4750
Wire Wire Line
	7350 3600 8200 3600
Wire Wire Line
	7350 3050 7350 3600
Wire Wire Line
	5550 3800 6150 3800
Wire Wire Line
	6150 3800 6150 3950
Wire Wire Line
	6150 3950 6300 3950
Wire Wire Line
	6100 3550 6100 3250
Wire Wire Line
	6100 3250 6300 3250
Text GLabel 8050 3900 0    60   Input ~ 0
CHASSIS_GND
Text GLabel 8050 4400 0    60   Input ~ 0
CHASSIS_GND
Text GLabel 8050 4900 0    60   Input ~ 0
CHASSIS_GND
Text GLabel 6400 4150 2    60   Input ~ 0
CHASSIS_GND
Text GLabel 6400 3550 2    60   Input ~ 0
CHASSIS_GND
Text GLabel 6400 2850 2    60   Input ~ 0
CHASSIS_GND
$EndSCHEMATC
