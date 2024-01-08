#!/bin/bash
clear
echo "####################################"
echo "# Enumeracion Servicios : FTP - 21 #"
echo "####################################"
echo ""
sleep 1.2
banner FTP-21
echo "FTP es un protocolo ampliamente utilizado para la transferencia de archivos en redes. La enumeración del servicio FTP implica recopilar información relevante, como la versión del servidor FTP, la configuración de permisos de archivos, los usuarios y las contraseñas (mediante ataques de fuerza bruta o guessing), entre otros.

A continuación, el enlace al primer proyecto que tocamos en esta clase:

Docker-FTP-Server: https://github.com/garethflowers/docker-ftp-server
Una de las herramientas que usamos en esta clase para el primer proyecto que nos descargamos es ‘Hydra‘. Hydra es una herramienta de pruebas de penetración de código abierto que se utiliza para realizar ataques de fuerza bruta contra sistemas y servicios protegidos por contraseña. La herramienta es altamente personalizable y admite una amplia gama de protocolos de red, como HTTP, FTP, SSH, Telnet, SMTP, entre otros.

El siguiente de los proyectos que utilizamos para desplegar el contenedor que permite la autenticación de usuarios invitados para FTP, es el proyecto ‘docker-anon-ftp‘ de ‘metabrainz‘. A continuación, se os proporciona el enlace al proyecto:

Docker-ANON-FTP: https://github.com/metabrainz/docker-anon-ftp"
sleep 3
figlet Hydra
echo ">> hydra -l marianpg12 -P /home/marianpg/Hacking/rockyou.txt ftp://192.168.0.1"
sleep 1.2
echo "Le aplicamos fuerza bruta a mi usuario, establecido en el puerto 21 del contenedor"
sleep 1.2
