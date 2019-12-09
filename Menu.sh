#!/bin/bash
RED='\033[0;41;30m'
STD='\033[0;0;39m'
Mame(){
echo " ────────────██████████──████──── "
echo " ────────████▒▒░░░░░░░░██▒▒░░██── "
echo " ──────██▒▒░░░░██░░██░░░░██░░░░██ "
echo " ────██▒▒░░░░░░██░░██░░░░░░▒▒░░██ "
echo " ────██░░░░░░░░██░░██░░░░░░▒▒▒▒██ "
echo " ──██░░░░░░▒▒▒▒░░░░░░▒▒▒▒░░░░▒▒██ "
echo " ██▒▒░░░░░░░░░░░░██░░░░░░░░░░░░██ "
echo " ██░░░░▒▒░░░░░░░░██░░░░░░░░░░▒▒██ "
echo " ██░░░░▒▒░░░░░░░░░░░░░░░░░░░░██── "
echo " ──██████░░░░░░░░░░░░░░░░░░▒▒██── "
echo " ██▒▒▒▒▒▒██░░░░░░░░░░░░░░░░▒▒██── "
echo " ██▒▒▒▒▒▒▒▒██░░░░░░░░░░░░▒▒██──── "
echo " ██▒▒▒▒▒▒▒▒██░░░░░░░░░░▒▒████──── "
echo " ──██▒▒▒▒▒▒▒▒██▒▒▒▒▒▒████▒▒▒▒██── "
echo " ────██▒▒▒▒██████████▒▒▒▒▒▒▒▒▒▒██ "
echo " ──────██████──────████████████── "
}
pause()
{
read -p "Presiona la tecla [Enter] para continuar...." fackEnterKey
}
1_menu(){
        clear
        Mame
        echo "_Pag.1__________________________"
        echo "|------------------------------ |"
        echo "|-M E N U - D E - S C R I P T S-|"
        echo "|-------------------------------|"
        echo "|1.-Hola Mundo------------------|"
        echo "|2.-Variables-------------------|"
        echo "|3.-Arrays----------------------|"
        echo "|4.-Variables_Parte2------------|"
        echo "|5.-Operaciones-----------------|"
        echo "|6.-Logica----------------------|"
        echo "|7.-Condicionales---------------|"
        echo "|8.-If y test-------------------|"
        echo "|9.-Comprobacion----------------|"
        echo "|10.-Case-----------------------|"
        echo "|-------------------------------|"
        echo "|11.-Salir----------------------|"
        echo "|------------0.-Siguiente pagina|"
        echo " ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"
}
2_menu(){
        clear
        Mame
        echo "_Pag.2__________________________"
        echo "|-------------------------------|"
        echo "|-M E N U - D E - S C R I P T S-|"
        echo "|-------------------------------|"
        echo "|11.-For------------------------|"
        echo "|12.-While----------------------|"
        echo "|13.-Until----------------------|"
        echo "|14.-Select---------------------|"
        echo "|15.-Funciones------------------|"
        echo "|16.-Librerias------------------|"
        echo "|17.-Señales--------------------|"
        echo "|18.-Colores--------------------|"
        echo "|-------------------------------|"
        echo "|19.-Salir----------------------|"
        echo "|--------------0.Pagina anterior|"
        echo " ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"
}
1_obtener(){
read=option
read -p "Elije [1 - 10]" option
case $option in
        1)bash ~/contenido/holamundo.sh && pause;;
        2)~/contenido/variables.sh && pause;;
        3)~/contenido/arrays.sh && pause;;
        4)~/contenido/variables_part2.sh && pause;;
        5)~/contenido/operaciones.sh && pause;;
        6)~/contenido/logica.sh && pause;;
        7)~/contenido/condicionales.sh && pause;;
        8)~/contenido/read_if.sh && pause;;
        9)~/contenido/comprobacion.sh && pause;;
        10)~/contenido/case.sh && pause;;
        11)exit 0;;
        0)while true
        do
                2_menu
                2_obtener
        done;;
        *)echo -e "${RED}..ERROR..ELIGE.OTRO.NUMERO..${STD}" && sleep 2
esac
}
2_obtener(){
read=option
read -p "Elije [11 - 19]" option
case $option in
        11)~/contenido/for.sh && pause;;
        12)~/contenido/while.sh && pause;;
        13)~/contenido/until.sh && pause;;
        14)~/contenido/select.sh && pause;;
        15)~/contenido/funciones.sh && pause;;
        16)~/contenido/librerias.sh && pause;;
        17)~/contenido/señales.sh && pause;;
        18)~/contenido/colores.sh && pause;;
        19)exit 0;;
        0)while true
        do
                1_menu
                1_obtener
        done;;
        *)echo -e "${RED}..ERROR..ELIGE.OTRO.NUMERO..${STD}" && sleep 2
esac
}

while true
do
        1_menu
        1_obtener
done
