echo "Introduzca un número"
read num1
numero='^[0-9]+$'
if [[ $num1 =~ $numero ]]
then
    echo "Introduzca otro número"
    read num2
        if [[ $num2 =~ $numero ]]
        then
            if [ $num1 -lt $num2 ]
            then
                i=0
                sumatorio=0
                for i in $(seq $num1 $num2); 
                do
                sumatorio=$(($i + $sumatorio))
                done
            elif [ $num2 -lt $num1 ]
            then
                i=0
                sumatorio=0
                for i in $(seq $num2 $num1); 
                do
                sumatorio=$(($i + $sumatorio))
                done
            fi
            echo "$sumatorio"
        fi
else
    echo "Debes introducir al menos un número"
fi