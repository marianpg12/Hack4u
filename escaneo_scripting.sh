#!/bin/bash
clear
echo "##########################################"
echo "#       Nmap: Scripting reconocimiento   #"
echo "##########################################"
echo ""
banner Nmap Scripting
sleep 1.2
echo "Si lanzamos el cmd:
>> nmap -p- --open -sC -n 192.168.1.37 -v -oG scanning
le estamos asignando el atributo -sC para que corra todos los scripts basicos de reconocimiento que tiene la tool NMAP.
Bien, para ver los scripts, la mayoria escritos en lenguaje LUA, podemos utilizar el siguiente cmd:
>> locate .nse
los script de enumeracion se encuentran en /usr/share/nmap/scripts/ "
sleep 2
echo ">> nmap -p80 192.168.1.37 --script http-enum
en este caso, corro un script de reconocimiento, Fuzzing para el puerto 80"
sleep 1.5
figlet Fuzzing


