#!/bin/bash
echo -e "\e[1;34mForma Substring\e[0m"
NOMBRE="Sample Text Carnal"
echo ${NOMBRE} una parte ${NOMBRE:8} y otra ${NOMBRE:8:4}

echo -e "\e[1;34mValores por defecto\e[0m"
NADA=
echo "Variable NADA: ${NADA:-Dou hinnie} ahora es ${VACIO:-'Miguel Indurain'}"
echo "La variable NADA no tiene valor algun F ${SINVALOR} "

echo -e "\e[1;34mValor establecido\e[0m"
echo "Variable NADA: ${NADA:=Dou hinnie} eta ${VACIO:='Miguel Indurain'}"
echo "La variable NADA no tiene valor algun F ${SINVALOR} "

echo -e "\e[1;34mValor por defecto\e[0m"
PROGRAMA='sniffit'
echo "Valor de PROGRAMA: ${PROGRAMA:+'tcpdump'} y ahora ${PROGRAMA}"
