#!/bin/bash
#Comprobamos que se nos pasa al menos un parámetro
if [ $# -ge 1 ] 
then
    resultado=$(($1%10)) #Declaramos la variable resultados con la operación modulo
    if [ $resultado -eq 0 ] #Aquí nos saca que el resultado de la operación anterior sea igual a 0 
    then
        echo "Este número es múltiplo de 10"
    else
        echo "Este número no es múltiplo de 10"
    fi

else
    echo "Se debe introducir al menos un parámetro"
    sleep 2
    exit 1
fi
echo "FIN DEL PROGRAMA"
read -p "Pulsa intro para continuar"
clear