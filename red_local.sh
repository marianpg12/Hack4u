#!/bin/bash
clear
echo "#########################################"
echo "#       Red Local: Arp-scan & nmap      #"
echo "#########################################"
echo ""
banner Red Local
echo "Escaneo de redes locales con Nmap y arp-scan"
sleep 1.2
echo "Tenemos 2 formas:
>> nmap -sn 192.168.1.37/24
Usamos nmap con mi IP local y me da un rango de conexiones locales
>> arp-scan --localnet -v -x --ignoredups
Escaneo de la red local, devices y dispositivos conectados"
sleep 1.2

