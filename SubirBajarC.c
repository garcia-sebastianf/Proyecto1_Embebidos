#include <stdio.h>
#include <wiringPi.h>

//Se crea una variable simbólica con el valor del pin GPIO
#define PIN 17 

int main()
{
    //Se establece el pin 17 como salida.
    wiringPiSetupGpio();
    pinMode(PIN, OUTPUT);

    /*Se conmuta el valor de salida del pin 17
    a la máxima tasa posible y de manera indefinida.*/
    while(1)
    {
        digitalWrite(PIN, HIGH);
        digitalWrite(PIN, LOW);
    }
    return 0;
}
