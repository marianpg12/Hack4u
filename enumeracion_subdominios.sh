#!/bin/bash
clear
echo "####################################"
echo "#   Enumeracion: Subdominios       #"
echo "####################################"
echo ""
sleep 1.5
echo "Enumeracion de subdominios: tema critico en la ciberseguridad. Dentro de un dominio de una empresa o sitio web se encuentran los subdominios que dan acceso a servidores web, base de datos, impresoras, etc...
La enumeración de subdominios es una fase crucial en seguridad informática que implica identificar los subdominios asociados a un dominio principal. Estos subdominios a menudo apuntan a diversos recursos de red, como servidores web, correo electrónico, bases de datos, etc.
Son puntos de entrada y posibles vulnerabilidades"
sleep 3
figlet Tools y Tecnicas
sleep 1.2
echo "Herramientas y Técnicas:

Pasivas:

Búsqueda en Motores de Búsqueda: Google, Bing, Yahoo.
Registros DNS Públicos: PassiveTotal, Censys.
Registros SSL/TLS: CTFR.
Activas:

Herramientas de Fuzzing: Wfuzz, Gobuster.
Envían solicitudes a servidores para encontrar subdominios mediante ataques de fuerza bruta.
Páginas Online:

Phonebook.cz e Intelx.io ofrecen información sobre dominios y subdominios.
Herramientas Adicionales:

Sublist3r: Busca información de subdominios.
Consideraciones:

Herramientas pasivas son menos intrusivas, mientras que herramientas activas envían solicitudes.
La combinación de herramientas pasivas y activas puede proporcionar resultados más completos.

Recomendación:

Combinar múltiples herramientas y técnicas para obtener una visión completa.
Mantenerse actualizado con nuevas herramientas y enfoques en el campo de la enumeración de subdominios.

Enlaces a Herramientas:

Phonebook (Pasiva)
Intelx (Pasiva)
CTFR (Pasiva)
Gobuster (Activa)
Wfuzz (Activa)
Sublist3r (Pasiva)"
sleep 5
figlet Gobuster
echo "Bien, vimos herramientas Pasivas como Intelx, phonebook y CTFR.
Ahora veamos una herramienta activa, como Gobuster. Que es mas agresiva, realiza solicitudes.
>> gobuster vhost -u http://infiernorojo.com -w rockyou.txt"
echo ""
figlet Wfuzz
echo "wfuzz -c -z file,/home/marianpg/Hacking/Introduccion-Hacking/Reconocimiento/SecLists/Discovery/DNS/subdomains-top1million-5000.txt --hc=404 -t 400 https://theshuttergrind.com/FUZZ"

sleep 3.5
figlet dehashed.com
echo "El sitio web >> www.dehashed.com sirve para obtener informacion acerca de usuarios, sitios, passwords..."
sleep 1.2


