#!/bin/bash
clear
echo "#########################################"
echo "#   Cap. Reconocimiento: NMAP           #"
echo "#########################################"
echo ""
banner NMAP
sleep 0.8
echo ">> nmap --top-ports 500 --open 172.162.115.45"
echo ""
echo "Hace un escaneo de los principales 500 puertos mas conocidos. Le agrego el estado Open, para filtrar"
sleep 1.5
echo ">> nmap -p- --open -v -n
-v verbose. Va mostrando el escaneo paso a paso
-n No hacer resolucion DNS. Ralentiza el proceso
-T[0-5]: Seleccionar plantilla de temporizado. (los numeros altos son mas rapidos)"
sleep 2.8


