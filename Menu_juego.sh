#!/bin/bash
base='\033[0m'
C='\033[1;36m'
P='\033[0;35m'
pause(){
read -p "Presiona la tecla [ENTER] para continuar..." fackEnterKey
}
menu(){
        clear
        echo "╔════════════════════════════════════════════════════════╗"
        echo -e "║                      ${P}_${base}                                 ║"
        echo -e "║                     ${P}(_)${base}                                ║"
        echo -e "║  ${P}___ _ __ _   _  ___ _  __ _ _ __ __ _ _ __ ___   __ _${base} ║"
        echo -e "║ ${P}/ __| '__| | | |/ __| |/ _\ | '__/ _\ | '_ \ _ \ / _| |${base}║"
        echo -e "║${P}(__| |  | |_| | (__| | (_| | | | (_| | | | | | | (_| | |${base}║"
        echo -e "║ ${P}\___|_|   \__,_|\___|_|\__, |_|  \__,_|_| |_| |_|\__,_|${base}║"
        echo -e "║                         ${P}__/ |${base}                          ║"
        echo -e "║                        ${P}|___/${base}                           ║"
        echo "╠════════════════════════════════════════════════════════╣"
        echo "║---------------------Elige tu nivel---------------------║"
        echo "║--------------------------------------------------------║"
        echo -e "║-------------------${C}[1 - 2 - 3 - 4 - 5]${base}------------------║"
        echo "║-0.-Salir-----------------------------------------------║"
        echo "╚════════════════════════════════════════════════════════╝"
}
choose(){
read -p "Elije el nivel de dificultad  " c
case $c in
        0)exit 0;;
        1)~/trabajos/niv/1.sh && pause;;
        2)~/trabajos/niv/2.sh && pause;;
        3)~/trabajos/niv/3.sh && pause;;
        4)~/trabajos/niv/4.sh && pause;;
        5)~/trabajos/niv/5.sh && pause;;
        *)echo "Elige del [1 - 5]" && sleep 2
esac
}
