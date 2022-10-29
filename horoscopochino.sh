#!/bin/bash
echo "Introduzca su año de nacimiento"
read anyo
numero='^[0-9]+$'
if [[ $anyo =~ $numero ]]
then
    cifras='^[0-9]{4}+$'
    if [[ $anyo =~ $cifras ]]
    then
        calculo=$(($anyo%12))
        case $calculo in
        0)
            echo "Según nuestro año de nacimiento nos corresponde La rata"
        ;;
        1)
            echo "Según nuestro año de nacimiento nos corresponde El buey"
        ;;
        2)
            echo "Según nuestro año de nacimiento nos corresponde El tigre"
        ;;
        3)
            echo "Según nuestro año de nacimiento nos corresponde El conejo"
        ;;
        4)
            echo "Según nuestro año de nacimiento nos corresponde El dragón"
        ;;
        5)
            echo "Según nuestro año de nacimiento nos corresponde La serpiente"
        ;;
        6)
            echo "Según nuestro año de nacimiento nos corresponde El caballo"
        ;;
        7)
            echo "Según nuestro año de nacimiento nos corresponde La cabra"
        ;;
        8)
            echo "Según nuestro año de nacimiento nos corresponde El mono"
        ;;
        9)
            echo "Según nuestro año de nacimiento nos corresponde El gallo"
        ;;
        10)
            echo "Según nuestro año de nacimiento nos corresponde El perro"
        ;;
        11)
            echo "Según nuestro año de nacimiento nos corresponde El cerdo"
        ;;
        esac
    else
        echo "Error de formato se deben de introducir 4 cifras"
    fi
else
    echo "Error de formato"
fi