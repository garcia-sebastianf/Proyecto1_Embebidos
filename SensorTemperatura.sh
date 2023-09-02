#!/bin/bash

#Obtener directorio temperatura recortando el dato de interes dentro del
#archivo correspondiente a la ID del sensor de temperatura.
temp_filter_c=`cat /sys/bus/w1/devices/28-030c97943f45/w1_slave | tail -n1 | cut -d '=' -f2`
Fecha=$(date +"%Y%m%d")
NombreArchivo="${Fecha}_TEMPERATURA.csv"
DirectorioSalida="/home/sebastian/Desktop"


if [ ! -e "$DirectorioSalida/$NombreArchivo" ]; then
    echo "FechaHora,Temperatura" > "$DirectorioSalida/$NombreArchivo"
fi



while true; do

    FechaHora=$(date +"%Y%m%d%T")
    # Agrega los datos al archivo CSV
    echo "$FechaHora $temp_filter_c" >> "$DirectorioSalida/$NombreArchivo"

    # Espera 10 segundos
    sleep 10
done

echo "Filter temp:" $temp_filter_c
echo "Fecha:" $Fecha
echo "NombreArchivo:" $NombreArchivo
