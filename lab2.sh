#!/bin/bash
echo "LAB_2 - Comandos básicos para navegar"
echo "Ingresa el comando de acuerdp a la instruccion"
echo "Si el comando ingresado es correcto se mostrara el output"
while true
do
        echo "1. Crear un archivo con el nombre de file1.txt"
        echo "Usando el comando touch"
        read res
        e="touch file1.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nopendejo:v";;
        esac
done
while true
do
        echo "2. Cambia el timestamp del archivo file1.txt"
        echo "Usando el comando touch"
        read res
        e="touch file1.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "3. Crear un archivo con el nombre file2.txt"
        echo "Usando el comando touch"
        read res
        e="touch file2.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "4. Despliega el contenido de directorio actual"
        echo "Sin usar el comando ls"
        read res
        e="dir"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "5. Limpia el contenido de la terminal"
        echo "Usa el comando clear"
        read res
        e="clear"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "6. Despliega el texto "hello""
        echo "Usando el comando echo"
        read res
        e="echo \"hello\""
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "7. Redirige la salida del comando anterior a un archivo"
        echo "Usa > y luego tu archivo"
        read res
        e="echo \"hello\" > hello.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "8. Adjunta el texto \"linux\" al archivo hello.txt"
        echo "Usa >> y luego tu archivo"
        read res
        e="echo \"linux\" >> hello.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "10. Despliega en la pantalla el contenido del archivo hello.txt"
        echo "Usa el comando cat"
        read res
        e="cat hello.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "11. Despliega en la pantalla las primeras lineas del archivo hello.txt"
        echo "Usa el comando head"
        read res
        e="head hello.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "12. Despliega solo las ultimas dos lineas del archivo hello.txt"
        echo "Usa el comando tail y unas restricciones"
        read res
        e="tail -2 hello.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "13. Despliega las ultimas lineas del archivo hello.txt"
        echo "Usa el comando tail"
        read res
        e="tail hello.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "14. Muestra las estadisticas para el archivo hello.txt"
        echo "Usa el comando stat"
        read res
        e="stat hello.txt"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
while true
do
        echo "15. Muestra las estadisticas para la carpeta dir1"
        echo "Usa el comando stat"
        read res
        e="stat dir1"
        case "$res" in
                $e)$e
        break;;
                *)echo "nope";;
        esac
done
