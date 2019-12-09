#!/bin/bash
base='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
c1=0 c2=0 c3=0 c4=0 c5=0 c6=0
v1=(" " " ")
v2=(" " " " " ")
v3=(" " " " " " " " " ")
h1=(" " " " " " " ")
h2=(" " " " " " " ")
h3=(" " " ")
vis(){
clear


}
pause(){
read -p "Precion la tecla [Enter] para continuar" fackEnterKey
}
logic(){
        echo "Nivel 4                       6 comandos a resolver"
        echo "------------Que quieres resolver primero-----------"
        echo "Verticales - 1      Horizontales - 2      Salir - 0"
        if [ $c1 == 1 ] && [ $c2 == 1 ] && [ $c3 == 1 ] && [ $c4 == 1 ] && [ $c5 == 1 ] && [ $c6 == 1 ]
        then
                echo -e "${GREEN}CONGRATULATIONS${base} LEVEL 4 -- ${BLUE}* C L E A R*${base} --"
                echo -e "Saliendo..." && sleep 2 && exit 0 && ~/trabajos/game.sh && pause
        else
        read ori
        case $ori in
                1)echo "---Palabras verticales---"
                  read -p "Cual deseas resolver? [1,3,5]  " res
                        while (test ${res} -ne 1) && (test ${res} -ne 3) && (test ${res} -ne 5) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [1-3-5] o [0] para regresar " res
                                done
                        case $res in
                                1)read -p "Comando que sirve para listar el contenido del directorio " ans
                                  while (test "${ans}" != "ls") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v1=("L" "S") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c1=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                        esac;;
                                        2)echo "---Palabras horizontales---"
                  read -p "Cual deseas resolver [2,4,6]  " res
                        while (test ${res} -ne 2) && (test ${res} -ne 4) && (test ${res} -ne 6) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [2-4-6] o [0] para regresar " res
                                done
                        case $res in
                                 2)read -p "Comando que ordena el contenido de un fichero  " ans
                                  while (test "${ans}" != "sort") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h1=(" " "O" " " "T") v1[1]="S" v2[2]="R" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c2=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;

                        esac;;
                0)echo -e "Saliendo..." && sleep 2 && exit 0 && ~/trabajos/game.sh && pause;;
                *)echo -e "${RED}Eleccion invalida, elige entre [1-2-0]${base}" && sleep 2
        esac
        fi


}
while true
do
        vis
        logic
done
