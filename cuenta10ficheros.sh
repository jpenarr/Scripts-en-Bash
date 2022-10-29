#!/bin/bash
#Comprobamos que se nos pasa al menos un parámetro
if [ $# -ge 1 ]
then
    if [ -d $1 ] #comprobamos que el parámetro pasado es un directorio
    then
        cont=0
        for dir in `ls $1` #Recorro todos los elementos del directorio
        do
            if [ -f $1/$dir ] #Compruebo si el elemento es un fichero regular
            then
                let "cont++" #Aumentamos el contador de ficheros
            fi
        done

        if [ $cont -ge 10 ] #Comprobamos si hay 10 o más ficheros regulares
        then
            echo "El directorio $1 contiene 10 o más ficheros"
        else
            echo "El directorio $1 contiene menos de 10 ficheros"
        fi

    else
        echo "El parámetro introducido no es un directorio"
        sleep 2
        exit 2
    fi
else
    echo "Debes introducir al menos un parámetro"
    sleep 2
    exit 1
fi
echo "FIN DEL PROGRAMA"
read -p "Pulse INTRO para continuar"
clear