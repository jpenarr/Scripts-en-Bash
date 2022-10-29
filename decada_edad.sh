#!/bin/bash
#En primer lugar pedimos que se pase los parámetros por teclado
echo "Introduce la edad"
read e1
fecha=$(date +%Y)
anyo=$(($fecha-$e1))
if [ $e1 -ge 15 ] && [ $e1 -le 60 ] #En este paso limitamos el rango de edad a introducir
then
    if [ $anyo -ge 1961 ] && [ $anyo -le 1970 ]
    then
        echo "Si naciste  en el $anyo, naciste en la decada de 1960"
    elif [ $anyo -ge 1971 ] && [ $anyo -le 1980 ]
    then
        echo "Si naciste  en el $anyo, naciste en la decada de 1970"
    elif [ $anyo -ge 1981 ] && [ $anyo -le 1990 ]
    then
        echo "Si naciste  en el $anyo, naciste en la decada de 1980"
    elif [ $anyo -ge 1991 ] && [ $anyo -le 2000 ]
    then
        echo "Si naciste  en el $anyo, naciste en la decada de 1990"
    elif [ $anyo -ge 2001 ] && [ $anyo -le 2010 ]
    then
        echo "Si naciste  en el $anyo, naciste en la decada de 2000"
    fi

else
    echo "La edad introducida no es correcta"
fi