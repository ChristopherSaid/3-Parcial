#!/bin/bash
base='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
c1=0 c2=0 c3=0 c4=0
v1=(" " " " " ")
v2=(" " " " " " " ")
h1=(" " " " " " " ")
h2=(" " " " " ")
vis(){
clear
echo "    ╔═══╗"
echo "    ║ ${v1[0]} ║"
echo "╔═══╬═══╬═══╦═══╗"
echo "║ ${h1[0]} ║ ${v1[1]} ║ ${h1[2]} ║ ${v2[0]} ║"
echo "╚═══╬═══╬═══╬═══╣"
echo "    ║ ${v1[2]} ║   ║ ${v2[1]} ║"
echo "    ╚═══╝   ╠═══╣"
echo "            ║ ${v2[2]} ║"
echo "            ╠═══╬═══╦═══╗"
echo "            ║ ${v2[3]} ║ ${h2[1]} ║ ${h2[2]} ║"
echo "            ╚═══╩═══╩═══╝"
}
pause(){
read -p "Presiona la tecla [Enter] para continuar..." fackEnterKey
}
logic(){
        echo "Nivel 1                   4 comandos a resolver"
        echo "---------Que quieres resolver primero?---------"
        echo "Verticales - 1    Horizontales - 2    Salir - 0"
        if [ $c1 -eq 1 ] && [ $c2 -eq 1 ] && [ $c3 -eq 1 ] && [ $c4 -eq 1 ]
        then
                echo -e "${GREEN}CONGRATULATIONS${base} LEVEL 1 -- ${BLUE}*C L E A R*${base} --"
                echo -e "Saliendo..." && sleep 2 && exit 0 && ~/trabajos/game.sh && pause
        else
        read ori
        case $ori in
                1)echo "---Palabras verticales---"
                  read -p "Cual deceas resolver? [2,3]  " res
                        while (test ${res} -ne 2) && (test ${res} -ne 3) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [2-3] o [0] para regresar " res
                                done
                        case $res in
                                2)read -p "Comando para ver el *manual* de uso de un comando " ans
                                  while (test "${ans}" != "man") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v1=("M" "A" "N") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c1=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                3)read -p "Comando que te brinda una **** sobre un comando  " ans
                                  while (test "${ans}" != "help") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v2=("H" "E" "L" "P") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c2=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                0)echo "regresando..." && sleep 1;;
                        esac;;
                2)echo "---Palabras horizontales---"
                  read -p "Cual deseas resolver [1,4]  " res
                        while (test ${res} -ne 1) && (test ${res} -ne 4) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [1-4] o [0] para regresar " res
                                done
                        case $res in
                                1)read -p "programa informático, cuya función consiste en interpretar órdenes, y un lenguaje de consola  " ans
                                  while (test "${ans}" != "bash") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h1=("B" " " "S" " ") v1[1]="A" v2[0]="H" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c3=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                4)read -p "comando que muestra tu ubicacion actual en cuanto directorios  " ans
                                  while (test "${ans}" != "pwd") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h2=("P" "W" "D") v2[3]="P" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c4=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                        esac;;

                0)echo -e "Saliendo..." && sleep 2 && exit 0 && ~/trabajos/game.sh && pause;;
                *)echo -e "${RED}Opcion invalida, elige entre [1-2-0]${base}" && sleep 2
                        esac
        fi
}


while true
do
        vis
        logic
done
