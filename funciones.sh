#!/bin/bash
RES=0
mostrar(){
  echo "Valores: $0> $1 $2 y $3"
}
sumame(){
  echo "Estamos en la funcion: ${FUNCNAME}"
  echo "Parametros: $1 y $2"
  RES=`expr ${1} + ${2}`
  return 0
}
boom(){
  echo "No ejecutes esto kbrom....."
  boom
}
mostrar 3 4 "epa"
sumame 45 67 && echo "OK" || echo "Algo salio mal"
echo "Resultado: ${RES} $!"
