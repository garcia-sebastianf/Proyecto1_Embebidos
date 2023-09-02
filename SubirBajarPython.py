#!/usr/bin/env python3


import RPi.GPIO as GPIO

# Configuración en modo BCM
GPIO.setmode(GPIO.BCM)

#Numero del pin en el modo BCM
#Correspondiente al pin GPIO17
PinSalida = 17

#Configuración del pin como salida
GPIO.setup(PinSalida, GPIO.OUT)

while True:
    GPIO.output(PinSalida, GPIO.HIGH)
    GPIO.output(PinSalida, GPIO.LOW)



