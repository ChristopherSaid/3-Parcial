#!/bin/bash
echo "abranse que ahi viene un WHILE"
cont=0
while (test ${cont} -lt 100)
do
        cont=`expr $cont + 10`
        echo "Valor del contador: ${cont}"
done
echo "Valor final del contador: ${cont}"
