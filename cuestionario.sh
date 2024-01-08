#!/bin/bash
clear

figlet Cuestionario
figlet Reconocimiento
echo "Parametro de wfuzz que se utiliza para especificar codigo de estado HTTP
para considerar respuesta como valida?
>> --sc"
sleep 2
echo "Parametro que utiliza Nmap para escanear puertos UDP?
>> sU"
sleep 2
echo "TTL maquina windows >> 128"
sleep 2
echo "Tecnica de escaneo de NMAP para omitir escaneo puertos cerrados y enfocarse en abiertos?
>> ACK Scan"
sleep 2
echo "Lenguaje LUA para scripts personalizados en NMAP (.nse)"
sleep 1
echo "Tecnica escaneo NMAP que se utiliza para detectar sistemas operativos en una red?
>> OS Fingerprint"
sleep 2
echo "Tecnica de escaneo Nmap para enviar paquetes TCP con banderas TCP URG y PUSH Activadas?
>> XMAS Scan"
sleep 2
echo "Cabecera con WFUZZ para enumerar subdominios mediante ataque fuerza bruta?
>> Host"
sleep 2
echo "Formas para indicar rango total de puertos?
>> -p- y -p1-65535"
sleep 2
echo "Nmap rango de puertos especificos?
>> -p 22,25, 80"
sleep 2
echo "con Wfuzz quiero mostrar aquellas respuestas que tengan un numero de palabras dado?
>> --sw (show words)"
sleep 2
echo "Wfuzz wordlist o senalar el diccionario?
>> -w"
sleep 2
echo "Parametro de Nmap para ocultar la IP de origen?
>> -D (importante este parametro)"
sleep 2
echo "Wfuzz parametro para realizar peticion con metodo HTTP como PUT o DELETE?
>> -X"
sleep 2
echo "escaneo mas rapido de NMAP?
>> TCP SYN (no establece completamente la conexion, utiliza el hanshake del protocolo TCP"
sleep 3
echo "Tecnica alternativa para enumerar puertos en lugar del escaneo de puertos TCP/UDP?
>> Enumeracion de puertos usando descriptores de archivo"
sleep 2
echo "TTL de Linux >> 64"
sleep 2
echo "Parametro de NMAP para controlar el temporizado y rendimiento?
>> T[0-5]"
sleep 2
echo "Gobuster aplicar reconocimiento de subdominios?
>> gobuster vhost"
sleep 2
echo "Nmap tecnica de escaneo con paquetes ICMP en lugar de TCP o UDP?
>> ICMP scan"
sleep 2
echo "Wfuzz ocultar respuestas con un numero caracteres dado?
>> --hh"
sleep 2
echo "Wfuzz:
--hc >> ocultar codigo de estado
--sl >> mostrar numero lineas
--sh >> mostrar numero caracteres
--hh >> ocultar numero caracteres
--sc >> mostrar codigo de estado
--hw >> ocultar numero de palabras"
sleep 4
echo "Nmap parametro para realizar escaneo sin realizar resolucion DNS?
>> -n"
sleep 2



