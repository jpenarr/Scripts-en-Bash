#!/bin/bash

echo "Seleccione una opción del siguiente menú"
echo "1) Sumar"
echo "2) Restar"
echo "3) Dividir"
echo "4) Multiplicar"
echo "5) Salir"
read menu
until [ $menu -eq 5 ];
do
    case $menu in
        1)
            Sumar (){
                echo "Introduzca un número"
                read num1
                numero='^[0-9]+$'
                if [[ $num1 =~ $numero ]]
                then
                    echo "Introduzca otro número"
                    read num2
                    if [[ $num2 =~ $numero ]]
                    then
                        resultado=$(($num1+$num2))
                        echo $resultado
                    else
                        echo "Numero erróneo, introduzca otro | tee >> error.log"
                    fi
                else
                    echo "Numero erróneo, introduzca otro | tee >> error.log"
                
                fi    
            }
            break
            ;;
        2)
            Restar
            break
            ;;
        3)
            Dividir
            break
            ;;
        4)
            Multiplicar
            ;;
        5)
            exit
            ;;
          
    esac
done