#!/bin/bash
#!/bin/bash
base='\033[0m'
RED='\033[0;31m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
c1=0 c2=0 c3=0 c4=0 c5=0
v1=(" " " " " " " " " " " " " " " " " " " " " " " " " " " ")
v2=(" " " " " " " " " ")
h1=(" " " " " ")
h2=(" " " " " " " " " ")
h3=(" " " ")
vis(){
clear
echo "              5
                  ╔═══╦═══╗
                4 ║ ${v2[0]} ║ ${h3[1]} ║
                  ╠═══╬═══╝
            3     ║ ${v2[1]} ║
      ╔═══╦═══╦═══╬═══╬═══╗
    2 ║ ${h2[0]} ║ ${v1[0]} ║ ${h2[2]} ║ ${v2[2]} ║ ${h2[4]} ║
      ╚═══╬═══╬═══╬═══╬═══╝
          ║ ${v1[1]} ║   ║ ${v2[3]} ║
          ╠═══╣   ╠═══╣
          ║ ${v1[2]} ║   ║ ${v2[4]} ║
          ╠═══╣   ╚═══╝
          ║ ${v1[3]} ║
  ╔═══╦═══╬═══╣
1 ║ ${h1[0]} ║ ${h1[1]} ║ ${v1[4]} ║
  ╚═══╩═══╬═══╣
          ║ ${v1[5]} ║
          ╠═══╣
          ║ ${v1[6]} ║
          ╚═══╝"

}
pause(){
read -p "Precion la tecla [Enter] para continuar" fackEnterKey
}
logic(){
        echo "Nivel 5                       5 comandos a resolver"
        echo "------------Que quieres resolver primero-----------"
        echo "Verticales - 1      Horizontales - 2      Salir - 0"
        if [ $c1 == 1 ] && [ $c2 == 1 ] && [ $c3 == 1 ] && [ $c4 == 1 ] && [ $c5 == 1 ]
        then
                echo -e "${GREEN}CONGRATULATIONS${base} LEVEL 5 -- ${BLUE}* C L E A R*${base} --"
                echo -e "Saliendo..." && sleep 2 && exit 0 && ~/trabajos/game.sh && pause
        else
        read ori
        case $ori in
                1)echo "---Palabras verticales---"
                  read -p "Cual deseas resolver? [3,5]  " res
                        while (test ${res} -ne 3) && (test ${res} -ne 5) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [1-3-5] o [0] para regresar " res
                                done
                        case $res in
                                3)read -p "Comando que te muestra los comandos que has usado " ans
                                  while (test "${ans}" != "history") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v1=("H" "I" "S" "T" "O" "R" "Y") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c3=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                5)read -p "Comando que cambia los permisos de usuario sobre algun archivo o directorio " ans
                                  while (test "${ans}" != "chown") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                v2=("C" "H" "O" "W" "N") && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c5=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                        esac;;

                2)echo "---Palabras horizontales---"
                  read -p "Cual deseas resolver [1,2,4]  " res
                        while (test ${res} -ne 1) && (test ${res} -ne 2) && (test ${res} -ne 4) && (test ${res} -ne 0)
                                do
                                        read -p "Nope opcion invalida elige entre [1-2-4] o [0] para regresar " res
                                done
                         case $res in
                                 1)read -p "Comando que muestra los usuarios de sistema que han iniciado una sesion  " ans
                                  while (test "${ans}" != "who") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h1=("W" "H" " ") v1[4]="O" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c1=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                 2)read -p "Comando modifica los permisos de Lectura/Escritura/Ejecucion de un archivo  " ans
                                  while (test "${ans}" != "chmod") && (test "${ans}" != 0)
                                                                          do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h2=("C" " " "M" " " "D") v1[0]="H" v2[2]="O" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c2=1
                                        else
                                           echo "regresando..." && sleep 1
                                        fi;;
                                 4)read -p "Comando que nos permite movernos entre directorios  " ans
                                  while (test "${ans}" != "cd") && (test "${ans}" != 0)
                                        do
                                          read -p "Nope, try again  " ans
                                        done
                                        if [ "$ans" != 0 ]; then
                                                h3=(" " "D") v2[0]="C" && echo -e "${GREEN}CORRECTO${base}" && sleep 2 && c4=1
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
