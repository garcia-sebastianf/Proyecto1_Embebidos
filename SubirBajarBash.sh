#!/bin/bash

while true;
do
    # Sets pin 18 to high
    echo "1" > /sys/class/gpio/gpio17/value
    # Sets pin 18 to low
    echo "0" > /sys/class/gpio/gpio17/value
done

