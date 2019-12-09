#!/bin/bash
booleano=true
$booleano && echo "ok" || echo "no es true"
otrobool=!${booleano}
test ${otrobool} || echo "Ahora es falso"

valor=5
test ${valor} -le 8 && echo "Se cumple"

nuevo=${valor}
test ${nuevo} -eq ${valor} && echo "Son lo mismo"
echo "Ahora ${nuevo} es lo mismo que ${valor}"
