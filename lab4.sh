#!/bin/bash
echo "LAB_4 - Comandos basicos para administrar procesos"
echo "Ingresa el comando de acuerdo a la instruccion"
echo "Si el comando ingresado es correcto se mostrara el output"
while true
do
        echo "1. Ejecuta el comando ps y analiza su salida"
        echo "Intenta con el comando ps"
        read respuesta
        if [ "$respuesta" = "ps" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "2. Crea un nuevo proceso"
        echo "Intenta con el comando sleep"
        read respuesta
        if [ "$respuesta" = "sleep 60 &" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "3. Ejecuta ps y analiza su salida"
        echo "Intenta con el comando ps"
        read respuesta
        if [ "$respuesta" = "ps" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "4. Mata el proceso creado en el paso 2 (Reemplaza 12345 por el ID del proceso)"
        echo "Intenta con el comando kill 12345"
        read respuesta
        if [ "$respuesta" = "kill 12345" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "5. Obliga al proceso a morir enviando la señal -9"
        echo "Intenta con el comando kill -p 12345"
        read respuesta
        if [ "$respuesta" = "kill -p 12345" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "6. Inicia un procesos mas"
        echo "Intenta con el comando sleep 30 &"
        read respuesta
        if [ "$respuesta" = "sleep 30 &" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "7. Mata los procesos asociados al comando \"sleep\""
        echo "Intenta con el comando killall"
        read respuesta
        if [ "$respuesta" = "killall sleep" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "8. Mata todos los procesos asociados al usuario actual"
        echo "Intenta con el comando killall -u user"
        read respuesta
        if [ "$respuesta" = "killall -u user" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "9. Mata todos los procesos asociados al comando \"find\" ejecutados por el usuario actual."
        echo "Intenta con el comando killall"
        read respuesta
        if [ "$respuesta" = "killall -w find" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "10. Obten el PID del proceso bash"
        echo "Intenta con el comando pidof"
        read respuesta
        if [ "$respuesta" = "pidof bash" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "11. Utiliza el comando top para visualizar los procesos"
        echo "Intenta con el comando top"
        read respuesta
        if [ "$respuesta" = "top" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "12. Utiliza el comando pstree y analiza su salida"
        echo "Intenta con el comando pstree"
        read respuesta
        if [ "$respuesta" = "pstree" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
while true
do
        echo "13. Verifica el tiempo que tarda en ejecutarse un comando"
        echo "Intenta con el comando time"
        read respuesta
        if [ "$respuesta" = "time ls -l" ]
        then
        $respuesta
        break
        else echo "nope"
        fi
done
