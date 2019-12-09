#!/bin/bash
Nm=""
echo -n "Dame un nombre"
read Nm
case ${Nm} in
  iñigo)
        echo "${Nm} dice: ¿Que es obo?";;
  sten)
        echo "${Nm} dice: Haiga";;
  manueh)
        echo "${Nm} dice: El comunisto aun sirve";;
  pepo)
        echo "${Nm} dice: ITZ SPOOKY MONTH";;
  *)
        echo "A ese ${Nm} ni lo conozco";;
esac
