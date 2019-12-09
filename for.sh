#!/bin/bash
echo "FOR simple: "
for i in a b c d e f g h i
do
 echo "letra: $i"
done

NOM="John Michel McQueen Manueh Zelda"
echo "FOR simple para recorrer un array"
echo "Participantes de la LANparty:"
for i in ${NOM}
do
        echo ${i}
done

echo "FOR con el resultado de un comando"
for i in `cat direcciones.txt`
do
        echo ${i}
done

echo "FOR con ficheros"
for i in *.sh
do
        ls -lh ${i}
done

echo "FOR clasico"
for (( cont=0 ; ${cont} < 10 ; cont=`expr $cont + 1` ))
do
        echo "Ahora valgo > ${cont}"
done
