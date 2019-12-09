#!/bin/bash
base='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
c1=0 c2=0 c3=0 c4=0 c5=0 c6=0
v1=(" " " ")
v2=(" " " " " " " ")
v3=(" " " " " " " ")
v4=(" " " " " ")
h1=(" " " " " " " " " ")
h2=(" " " " " " " " " ")
vis(){
clear
echo "          ╔═══╗
                ║ ${v2[0]} ║
                ╠═══╣
                ║ ${v2[1]} ║
        ╔═══╗   ╠═══╣
        ║ ${v1[0]} ║   ║ ${v2[2]} ║
        ╠═══╬═══╬═══╬═══╦═══╗
        ║ ${v1[1]} ║ ${h1[1]} ║ ${v2[3]} ║ ${h1[3]} ║ ${v3[0]} ║
        ╚═══╩═══╩═══╩═══╬═══╣
                        ║ ${v3[1]} ║
                        ╠═══╣
                        ║ ${v3[2]} ║
                        ╠═══╬═══╦═══╦═══╦═══╗
                        ║ ${h2[0]} ║ ${h2[1]} ║ ${h2[2]} ║ ${h2[3]} ║ ${h2[4]} ║
                        ╚═══╩═══╩═══╬═══╬═══╝
                                    ║ ${v4[1]} ║
                                    ╠═══╣
                                    ║ ${v4[2]} ║
                                    ╚═══╝"
}
pause(){
read -p "Preciona la tecla [Enter] para continuar" fackEnterKey
}
logic(){
        echo "Nivel 3                       6 comandos a resolver"
        echo "------------Que quieres resolver primero-----------"
        echo "Verticales - 1      Horizontales - 2      Salir - 0"
        if [ $c1 == 1 ] && [ $c2 == 1 ] && [ $c3 == 1 ] && [ $c4 == 1 ] && [ $c5 == 1 ] && [ $c6 == 1 ]
        then
                echo -e "${GREEN}CONGRATULATIONS${base} LEVEL 3 -- ${BLUE}* C L E A R*${base} --"
                echo -e "Saliendo..." && sleep 2 && exit 0 && ~/trabajos/game.sh && pause
        else
        read ori
        case $ori in
                1)echo "---Palabras verticales---"
                                  read -p "Cual deseas resolver? [1,3,4,6]  " res
                        while (test ${res} -ne 1) && (test ${res} -ne 3) && (test ${res} -ne 4) && (test ${res} -ne 6) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [1-3-4-6] o [0] para regresar " res
                                done
                        case $res in
                                1)read -p "Comando para eliminar un archivo " ans
                                  while (test "${ans}" != "rm") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v1=("R" "M") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c1=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                3)read -p "Comando para buscar un archivo " ans
                                  while (test "${ans}" != "find") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v2=("F" "I" "N" "D") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c3=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                4)read -p "Ubicacion principal donde se encuntran los archivos importantes de linux " ans
                                  while (test "${ans}" != "root") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v3=("R" "O" "O") h2[0]="T" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c4=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                6)read -p "Comando para ver el contenido de un archivo (.txt, .sh, etc) " ans
                                  while (test "${ans}" != "cat") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h2[3]="C" v4=(" " "A" "T") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c6=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;

                        esac;;
                2)echo "---Palabras horizontales---"
                read -p "Cual deseas resolver [2,5]  " res
                        while (test ${res} -ne 2) && (test ${res} -ne 5) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [1-4] o [0] para regresar " res
                                done
                        case $res in
                                 2)read -p "comando para crear directorios  " ans
                                  while (test "${ans}" != "mkdir") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h1=(" " "K" " " "I" " ") v1[1]="M" v2[3]="D" v3[0]="R" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c2=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                5)read -p "comando para crear archivos o para cambiar la fecha de moficicacion de un archivo  " ans
                                  while (test "${ans}" != "touch") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h2=("T" "O" "U" "C" "H") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c5=1
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
