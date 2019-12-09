#!/bin/bash
base='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
c1=0 c2=0 c3=0 c4=0 c5=0
v1=(" " " " " " " " " " " ")
v2=(" " " " " " " ")
h1=(" " " " " " " ")
h2=(" " " " " " " " " ")
h3=(" " " " " " " ")
vis(){
clear
echo " ╔═══╗"
echo " ║ ${v1[0]} ║"
echo " ╠═══╬═══╦═══╦═══╗"
echo " ║ ${v1[1]} ║ ${h1[1]} ║ ${h1[2]} ║ ${h1[3]} ║"
echo " ╠═══╬═══╩═══╩═══╝"
echo " ║ ${v1[2]} ║"
echo " ╠═══╣"
echo " ║ ${v1[3]} ║"
echo " ╠═══╣       ╔═══╗"
echo " ║ ${v1[4]} ║       ║ ${v2[0]} ║"
echo " ╠═══╬═══╦═══╬═══╬═══╗"
echo " ║ ${v1[5]} ║ ${h2[1]} ║ ${h2[2]} ║ ${v2[1]} ║ ${h2[4]} ║"
echo " ╚═══╩═══╩═══╬═══╬═══╝"
echo "             ║ ${v2[2]} ║"
echo "         ╔═══╬═══╬═══╦═══╗"
echo "         ║ ${h3[0]} ║ ${v2[3]} ║ ${h3[2]} ║ ${h3[3]} ║"
echo "         ╚═══╩═══╩═══╩═══╝"
}
suse(){
read -p "Presiona la tecla [Enter] para continuar..." fackEnterKey
}
logic(){
        echo "Nivel 2           5 comandos a resolver"
        echo "-------Que quieres resolver primero?-------"
        echo "Verticales - 1    Horizontales - 2        Salir - 0"
        if [ $c1 -eq 1 ] && [ $c2 -eq 1 ] && [ $c3 -eq 1 ] && [ $c4 -eq 1 ] && [ $c5 -eq 1 ]
        then
                echo -e "${GREEN}CONGRATULATIONS${base} LEVEL 2 -- ${BLUE}*C L E A R*${base} --"
                echo -e "Saliendo..." && sleep 2 && exit 0 && ~/trabajos/game.sh && pause
        else
        read ori
        case $ori in
                1)echo "---Palabras verticales---"
                  read -p "Cual deceas resolver? [1,4]  " res
                        while (test ${res} -ne 1) && (test ${res} -ne 4) && (test ${res} -ne 0)
                                do
                                  read -p "Nope opcion invalida elige entre [1-4] o [0] para regresar " res
                                done
                        case $res in
                                1)read -p "software que constituye una parte fundamental del sistema operativo " ans
                                  while (test "${ans}" != "kernel") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v1=("K" "E" "R" "N" "E" "L") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c1=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                4)read -p "Comando que permite a los usuarios ejecutar programas con los privilegios de seguridad de otro usuario  " ans
                                  while (test "${ans}" != "sudo") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v2=("S" "U" "D" "O") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c2=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                0)echo "regresando..." && sleep 1;;
                        esac;;

                2)echo "---Palabras horizontales---"
                  read -p "Cual deseas resolver [2,3,5]  " res
                        while (test ${res} -ne 2) && (test ${res} -ne 3) && (test ${res} -ne 5) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [2,3,5] o [0] para regresar " res
                                done
                        case $res in
                                2)read -p "comando que sirve para imprimir textos en la consola  " ans
                                  while (test "${ans}" != "echo") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h1=(" " "C" "H" "O") v1[1]="E" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c3=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                3)read -p "Lenguaje sobre el que esta creado bash  " ans
                                  while (test "${ans}" != "linux") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                         h2=(" " "I" "N" " " "X") v1[5]="L" v2[1]="U" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c4=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                5)read -p "Indica el fin de un proceso *do*  " ans
                                  while (test "${ans}" != "done") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h3=("D" "O" "N" "E") v2[3]="O" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c5=1
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
