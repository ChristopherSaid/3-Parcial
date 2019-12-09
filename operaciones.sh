#!/bin/bash
VALOR1=50
VALOR2=23

RESULTADO=`expr ${VALOR1} + ${VALOR2}`
echo "Resultado: ${RESULTADO}"
RESULTADO2=`expr $VALOR1 + $VALOR2 + 3`
echo "Resultado2: ${RESULTADO2}"
echo "${VALOR1} + ${VALOR2} = ${RESULTADO}"
