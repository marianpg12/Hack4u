#!/bin/bash
clear
echo "###########################################"
echo "#             Que es XSS?                 #"
echo "###########################################"
echo ""
banner XSS
echo "Que es Xss?"
sleep 1.2
echo "Estas vulnerabilidad son tipicas de encontrar en Paginas web, inyectar en la pagina codigo JavaScript u otro codigo similar"
sleep 1.2
echo ""
figlet Tipos-XSS
echo "Existen varios tipos de vulnerabilidades XSS, incluyendo las siguientes:

Reflejado (Reflected): Este tipo de XSS se produce cuando los datos proporcionados por el usuario se reflejan en la respuesta HTTP sin ser verificados adecuadamente. Esto permite a un atacante inyectar código malicioso en la respuesta, que luego se ejecuta en el navegador del usuario.


Almacenado (Stored): Este tipo de XSS se produce cuando un atacante es capaz de almacenar código malicioso en una base de datos o en el servidor web que aloja una página web vulnerable. Este código se ejecuta cada vez que se carga la página.

DOM-Based: Este tipo de XSS se produce cuando el código malicioso se ejecuta en el navegador del usuario a través del DOM (Modelo de Objetos del Documento). Esto se produce cuando el código JavaScript en una página web modifica el DOM en una forma que es vulnerable a la inyección de código malicioso."
sleep 2
figlet XSS-GossipWorld
echo "Bien ahora hemos clonado un repositorio >> git clone https://github.com/globocom/secDevLabs
Esta tool nos da la posibilidad a traves de una app GossipWorld, de poder realizar XSS con php, python y JavaScript...
--------------------------------------------
A3 - Injection (XSS)	Python	Gossip World
--------------------------------------------
"
sleep 2
echo ">> secDevLabs/owasp-top10-2021-apps/a3/gossip-world
>> make install
y nos empieza a correr la tool en el localhost, puerto 10007
http://localhost:10007"
sleep 2
echo "Ahora bien, primer testeo XSS de un sitio. Vamos a la consola, tiramos un >> alert('testing');
Si hay respuesta, aparece vulnerabilidad XSS. Podemos inyectar algun JavaScript..."
sleep 2
echo "Para realizar testeos >> https://www.vulnhub.com/entry/myexpense-1,405/
Entorno de testeo, se puede utilizar VirtualBox. Utilizacion de JavaScripting, Inyeccion de scripting, uso de formularios, metodo GET/POST"
sleep 2
