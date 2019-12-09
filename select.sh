#!/bin/bash
echo "Select de distros - para el uso de ARTOSTKA"
DISTRITOS="Kolechia Macako Orgenia Afganta"
echo "Selecciona la mejor opcion por favor: ${resultado}"
select resultado in ${DISTRITOS}
do
  (test ${#resultado} -ne 0 ) && break
echo "Selecciona la mejor opcion por favor: ${resultados}"
done
echo "Distrito seleccionado: [${resultado}] longitud de cadena: ${#resultado}"
