#!/bin/bash
echo "LAB_3 - Copiar, renombrar, borrar archivos"
echo "Ingresa el comando de acuerdo a la instruccion"
echo "Si el comando ingresado es correcto se mostrara el output"
while true
do
        echo "1. Despliega en pantalla el uso del disco de la carpeta actual"
        echo "intenta con el comando du"
        read respuesta
        if [ "$respuesta" = "du" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "2. Despliega en pantalla el uso del disco de la carpeta actual en un formato legible"
        echo "intenta con el comando du y algunas especificaciones"
        read respuesta
        if [ "$respuesta" = "du -xh ~" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "3. Copia el archivo hello.txt a la carpeta dir2"
        echo "Intente con el comando cp"
        read respuesta
        if [ "$respuesta" = "cp hello.txt dir2" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "4. Copia y renombra el archivo hello.txt a dir2/file2.txt"
        echo "Intente con el comando cp"
        read respuesta
        if [ "$respuesta" = "cp hello.txt dir2/file2.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "5. Copia todos los archivos con la extension .txt de la carpeta dir2 a la carpeta dir2/dir3"
        echo "Intente con el comando cp"
        read respuesta
        if [ "$respuesta" = "cp -r dir2/*.txt dir2/dir3" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "6. Copia la carpeta dir2/dir3 al directorio actual"
        echo "Intente con el comando cp"
        read respuesta
        if [ "$respuesta" = "cp -r dir2/dir3 ." ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "7. Muestra el contenido de la carpeta actual"
        echo "usa el comando ls"
        read respuesta
        if [ "$respuesta" = "ls" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "8. Verifica la integridad de los archivo copiado hello.txt"
        echo "usa el comando md5sum"
        read respuesta
        if [ "$respuesta" = "md5sum hello.txt" ]
        then
        $respuesta
        else echo "nope"
        fi
        echo "ahora comparalo con el archivo original"
        read respuesta
        if [ "$respuesta" = "md5sum dir2/hello.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "9. Mueve el archivo hello.txt a dir/2/dir3/dir4/hi.txt"
        echo "usa el comando mv"
        read respuesta
        if [ "$respuesta" = "mv hello.txt dir/2/dir3/dir4/hi.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "10. Muestra el contenido de la carpeta dir4"
        echo "usa el comando ls"
        read respuesta
        if [ "$respuesta" = "ls" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "11. Crear la carpeta dir5"
        echo "usa el comando mkdir"
        read respuesta
        if [ "$respuesta" = "mkdir dir5" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "12. Mueve todos los archivos de texto en dir2 hacia dir5"
        echo "usa el comando mv"
        read respuesta
        if [ "$respuesta" = "mv dir2/*.txt dir5" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "13. Renombra la carpeta dir5 a dir50"
        echo "usa el comando mv"
        read respuesta
        if [ "$respuesta" = "mv dir5 dir50" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "14. Crea un enlace llamado "hello" desde el directorio actual hacia dir2/dir3/dir4/hi.txt"
        echo "usa el comando ln"
        read respuesta
        if [ "$respuesta" = "ln dir2/dir3/dir4/hi.txt hello" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "15. Crea un acceso directo llamado \"softlink\" desde el directorio actual hacia dir2/dir3/dir4/hi.txt"
        echo "usa el comando ln"
        read respuesta
        if [ "$respuesta" = "ln -s dir2/dir3/dir4/hi.txt softlink" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "16. Elimina el archivo file2.txt de forma interactiva"
        echo "usa el comando rm y unas especificaciones"
        read respuesta
        if [ "$respuesta" = "rm -i file2.txt" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "17. Elimina de forma interactiva y recursiva el contenido de dir5"
        echo "usa el comando rm y unas especificaciones"
        read respuesta
        if [ "$respuesta" = "rm -ir dir50/*" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "18. Elimina el directorio dir50"
        echo "usa el comando rmdir"
        read respuesta
        if [ "$respuesta" = "rmdir dir50" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
