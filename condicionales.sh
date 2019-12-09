#!/bin/bash
echo -e "\e[0;32mCon If\e[0m"  
Int=50
if [ ${Int} -gt 0 ]; then
echo "${Int} es mayor que 0"
fi
if [ -e /etc/shadow ]; then
echo "Ok, parece que tienes un sistema con shadow pass..., se me hace que esos archivos no son tareas eh"
fi
echo -e "\e[0;32mCon If - Else\e[0m"
MAK=-23
if [ ${MAK} -lt 0 ]
then
 echo "${MAK} es menor que 0"
else
 echo "${MAK} es mayor que 0"
fi
