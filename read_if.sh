#!/bin/bash
echo -n "Dame un valor:"
read V1
echo -n "Dame otro valor:"
read V2

echo "Has introducido ${V1} y ${V2}"

if [ ${V1} -gt ${V2} ]
then
  echo "${V1} es mayor que ${V2}"
elif [ ${V1} -lt ${V2} ]
then
  echo "${V1} es menor que ${V2}"
else
  echo "${V1} y ${V2} son iguales"
fi
