#!/bin/bash
clear
echo "#############################################"
echo "#  Resolucion Maquinas: Parte practica      #"
echo "#############################################"
sleep 2
figlet Maquina - 1
echo "Paso a paso:
Primero levantamos VirtualBox con la imagen de la maquina.
Luego hacemos un >> sudo arp-scan --localnet -x -v
con eso chequeamos la IP iniciada virtualmente:
>> 192.168.1.91
>> ping -c 1 192.168.1.91"
sleep 1.2
figlet Escaneo Puertos - NMAP
echo "No nos da respuesta de ping, debe tener habilitado un firewall o algun Ping tracert deshabilitado.
vamos al paso siguiente >> ESCANEO de puertos

>> nmap -p- --open -T5 -vvv -n 192.168.1.91 -oG IMF.txt

bien, aplicamos escaneo a TODOS los puertos, no queremos resolucion DNS, tripe Verbose, T5 para hacer un escaneo silencioso y lo exportamos a formato grepeable"
sleep 2
echo "
──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ # Nmap 7.93 scan initiated Tue Jan  2 14:18:27 2024 as: nmap -p- --open -T5 -vvv -n -oG IMF.txt 192.168.1.91
   2   │ # Ports scanned: TCP(65535;1-65535) UDP(0;) SCTP(0;) PROTOCOLS(0;)
   3   │ Host: 192.168.1.91 ()   Status: Up
   4   │ Host: 192.168.1.91 ()   Ports: 80/open/tcp//http/// Ignored State: filtered (65534)
   5   │ # Nmap done at Tue Jan  2 14:19:20 2024 -- 1 IP address (1 host up) scanned in 52.86 seconds"
sleep 2 
echo "Tiene abierto el puerto 80, que es de servicios web. Chequeamos en navegador http://192.168.1.91 y vemos que tiene respuesta, tiene un sitio web"
sleep 2
echo "Bien, hacemos un escaneo especifico al puerto 80 (apache)...
>> nmap -p80 -sC -sV 192.168.1.91 -oN targeted
utilizamos scripts basicos de reconocimientos, desarrollados en LUA"
sleep 2
echo "Aparte, si estamos utilizando TMUX, en otra solapa podemos utilizar:
>> whatweb http://192.168.1.91 para ver las caracteristicas del servidor web"
sleep 2

echo ""
echo "http://192.168.1.91 [200 OK] Apache[2.4.18], Bootstrap, Country[RESERVED][ZZ], HTML5, HTTPServer[Ubuntu Linux][Apache/2.4.18 (Ubuntu)], IP[192.168.1.91], JQuery[1.10.2], Modernizr[2.6.2.min], Script, Title[IMF - Homepage], X-UA-Compatible[IE=edge]
"
echo "Vemos que es un servidor LINUX, Apache. La version del JQuery esta bastante desactualizada"
sleep 1.5
echo "hacemos un escaneo posterior a este
>> nmap --script http-enum -p80 192.168.1.91 -oN webScan
este script es un pequeno Fuzzer"
sleep 1.5
figlet Codigo-Fuente sitio
echo "curl -s -X GET http://192.168.1.91 | grep '\.js'"
echo "con esto recorro el codigo fuente y traigo los archivos JavaScript"
sleep 1.2


