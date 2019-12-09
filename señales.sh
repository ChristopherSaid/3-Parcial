#!/bin/bash
cont=0
funcion(){
  echo "Se ha recibido una señal del espcaio exterior: ${FUNCNAME} ${0}"
  #exit
}
trap "funcion" INT QUIT TSTP

until (test ${cont} -eq 5)
do
  sleep 2
  echo "uff creo que es hora de irme a dormir, en mi colchon espringAIR"
  cont=`expr $cont + 1`
done
