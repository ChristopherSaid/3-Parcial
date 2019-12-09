#!/bin/bash
echo "LAB_5 - Manipular o parsear contenido de archivos"
echo "Ingresa el comando de acuerdo a la instruccion"
echo "Si el comando ingresado es correcto se mostrara el output"
while true
do
        echo "1. Buscar la palabra \"linux\" en el archivo hello"
        echo "Intenta con el comando grep"
        read respuesta
        if [ "$respuesta" = "grep \"linux\" hello" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "2. Busca la palabra "Hello" en toda la carpeta actual"
        echo "Intenta con el comando grep"
        read respuesta
        if [ "$respuesta" = "grep -r \"Hello\"" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "3. Busca la palabra "linux" en el archivo hello, imprimiendo el numero de linea del archivo"
        echo "Intenta con el comando grep"
        read respuesta
        if [ "$respuesta" = "grep -n \"linux\" hello" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "4. Despliega las lineas que no coinciden con el patron de busqueda"
        echo "Intenta con el comando grep"
        read respuesta
        if [ "$respuesta" = "grep -v \"world\" hello" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "5. Encuentra la linea mas larga dentro del archivo hello"
        echo "Intenta con el comando wc"
        read respuesta
        if [ "$respuesta" = "wc -L hello" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "6. Ejecuta lo siguiente para agregar contenido a los archivos new.txt"
        echo "Intenta con el comando echo y unas especificaciones"
        read respuesta
        if [ "$respuesta" = "echo -e "col1 col2 r1\ncol5 col6 r2\ncol3 col4 r3 " >> new.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "Ejecuta lo siguiente para agregar contenido a los archivos linux.txt"
        echo "Intenta con el comando echo y unas especificaciones"
        read respuesta
        if [ "$respuesta" = "echo -e "Hello\nlinux\nProgrammers paradise" >> linux.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "7. Muestra solo la primer columna del archivo new.txt"
        echo "Intenta con el comando cut"
        read respuesta
        if [ "$respuesta" = "cut -f1 -d' ' new.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "8. Extrae la tercer columna del archivo new.txt"
        echo "Intenta con el comando cut"
        read respuesta
        if [ "$respuesta" = "cut -f3 -d' ' new.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "9. Mezcla las lineas de los archivos hello.txt"
        echo "Intenta con el comando paste"
        read respuesta
        if [ "$respuesta" = "paste hello new.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "10. Ordena el contenido del archivo new.txt"
        echo "Intenta con el comando sort"
        read respuesta
        if [ "$respuesta" = "sort new.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "11. Compara el contenido del archivo hello y linux.txt"
        echo "Intenta con el comando diff"
        read respuesta
        if [ "$respuesta" = "diff hello linux.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
