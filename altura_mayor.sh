#!/bin/bash
#En primer lugar pedimos que se pase los parámetros por teclado
echo "Primera persona"
read p1
echo "Segunda persona"
read p2
echo "Tercera persona"
read p3
if [ $p1 -gt $p2 ] && [ $p1 -gt $p3 ]
    then
        echo "scale=2; $p1/100" | bc
elif [ $p2 -gt $p1 ] && [ $p2 -gt $p3 ]
    then
        echo "scale=2; $p2/100" | bc
elif [ $p3 -gt $p1 ] && [ $p3 -gt $p2 ]
    then
        echo "scale=2; $p3/100" | bc
fi
