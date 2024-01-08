#!/bin/bash
clear
figlet Bash - Scripting
#Definiendo funcion Control+C
function ctrl_c() {

  echo -e "[+] Saliendo ..."
  exit 1
}


trap ctrl_c SIGINT
echo "Time ... Control + C para salir"
sleep 0.8

# Bucle 1 a 100. Control + C para break
for i in $(seq 1 100); do
  echo "[+] Imprimiendo $i de 100" 
  sleep 0.8
done




