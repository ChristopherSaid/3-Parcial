#!/bin/bash
source ~/contenido/funciones.sh

mostrar 69 123 "epa"
sumame 1337 3389 && echo "OK" || echo "Algo salio mal"
echo "Resultado: ${RES} $!"
