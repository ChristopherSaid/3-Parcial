#!/bin/bash
echo "LAB_1 - Comandos básicos para navegar"
echo "Ingresa el comando de acuerdp a la instruccion"
echo "Si el comando ingresado es correcto se mostrara el output"
while true
do
        echo "1. Verificar tu directorio actual"
        read respuesta
        if [ $respuesta = "pwd" ]
        then
        $respuesta
        break
        else echo "Coff coff ...p w d"
        fi
done
while true
do
        echo "2. Crea un nuevo directorio con el nombre dir1"
        echo "puedes usar el comando mkdir"
        read respuesta
        if [ "$respuesta" = "mkdir dir1" ]
        then
        $respuesta
        break
        else echo "Nope, esa no es"
        fi
done
while true
do
        echo "3. Crea otro directorio llamado dir2"
        read respuesta
        if [ "$respuesta" = "mkdir dir2" ]
        then
        $respuesta
        break
        else echo "Another try"
        fi
done
while true
do
        echo "4. Crea la carpeta dir3 dentro de dir2"
        read respuesta
        if [ "$respuesta" = "mkdir dir2/dir3" ]
        then
        $respuesta
        break
        else echo "Too hard?"
        fi
done
while true
do
        echo "5. Crea la carpeta dir4 dentro de dir3"
        read respuesta
        if [ "$respuesta" = "mkdir dir2/dir3/dir4" ]
        then
        $respuesta
        break
        else echo "Tss almost mah boy"
        fi
done
while true
do
        echo "6. Lista el contenido del directorio actual"
        read respuesta
        if [ "$respuesta" = "ls" ]
        then
        $respuesta
        break
        else echo "Please try again"
        fi
done
while true
do
        echo "6. Lista el contenido del directorio actual"
        read respuesta
        if [ "$respuesta" = "ls" ]
        then
        $respuesta
        break
        else echo "Please try again"
        fi
done
while true
do
        echo "7. Lista todos los archivos en la carpeta actual"
        read respuesta
        if [ "$respuesta" = "ls -R" ]
        then
        $respuesta
        break
        else echo "Please try again"
        fi
done
while true
do
        echo "8. Cambiate a la carpeta dir2"
        read respuesta
if [ "$respuesta" = "cd dir2" ]
        then
        $respuesta
        break
        else echo "Please try again"
        fi
done
while true
do
        echo "9. Regresa a la carpeta anterior"
        read respuesta
        if [ "$respuesta" = "cd -" ]
        then
        $respuesta
        break
        else echo "Please try again"
        fi
done
while true
do
        echo "10. Regresa a la carpeta home del usuario"
        read respuesta
        if [ "$respuesta" = "cd" ]
        then
        $respuesta
        break
        else echo "Las peliculas se venden en formato de..."
        fi
done
