#!/bin/bash
clear
echo "#############################################"
echo "#    LFI - Local File Inclusion: Que es?    #"
echo "#############################################"
echo ""
banner LFI
sleep 2
echo "Que es Local File Inclusion?"
echo "La vulnerabilidad Local File Inclusion (LFI) es una vulnerabilidad de seguridad informática que se produce cuando una aplicación web no valida adecuadamente las entradas de usuario, permitiendo a un atacante acceder a archivos locales en el servidor web."
sleep 2
figlet LFI-Path-Traversal
echo "En muchos casos, los atacantes aprovechan la vulnerabilidad de LFI al abusar de parámetros de entrada en la aplicación web. Los parámetros de entrada son datos que los usuarios ingresan en la aplicación web, como las URL o los campos de formulario. Los atacantes pueden manipular los parámetros de entrada para incluir rutas de archivo local en la solicitud, lo que puede permitirles acceder a archivos en el servidor web. Esta técnica se conoce como “Path Traversal” y se utiliza comúnmente en ataques de LFI.

En el ataque de Path Traversal, el atacante utiliza caracteres especiales y caracteres de escape en los parámetros de entrada para navegar a través de los directorios del servidor web y acceder a archivos en ubicaciones sensibles del sistema.

Por ejemplo, el atacante podría incluir “../” en el parámetro de entrada para navegar hacia arriba en la estructura del directorio y acceder a archivos en ubicaciones sensibles del sistema."
echo "Bien, ahora clonamos un entorno de testeo en docker: github.com/NetsecExplained/docker-labs"
sleep 2
echo "lo levantamos en la carpeta /college-website/docker-compose.yml
>> docker-compose up -d"
sleep 1.5
echo "Una vez terminado >> > docker ps
CONTAINER ID   IMAGE                 COMMAND                  CREATED         STATUS                        PORTS                  NAMES
92258219159e   college_website-web   docker-php-entrypoi…   2 minutes ago   Up 2 minutes                  0.0.0.0:8081->80/tcp   college_website-web-1
b0d9e7f264b1   mariadb:10.7          docker-entrypoint.s…   2 minutes ago   Up 2 minutes                  3306/tcp               college_website-mariadb-1
0d423ed8352c   secdevlabs-app        /bin/sh -c 'python …   29 hours ago    Restarting (1) 1 second ago                          app-a7

ahi podemos ver que MariaDB esta corriendo y que la imagen college_website-web lo levanto en el puerto:8081"
sleep 2
echo ""
figlet localhost:8081
echo "Levantando el sitio, podemos acceder al mismo a traves de >> localhost:8081"
sleep 2
echo "Ahora bien, si queremos correr el bash desde la imagen creada en docker:
>> docker run -it college_website-web bash
con eso tenemos acceso al terminal en bash y podemos ver el index.php y los archivos .php que tenemos abierto en el localhost:8081

Se puede ver los campos utilizados, los archivos .php para sacar la informacion correspondiente."
sleep 2
figlet Apache2
echo "Ahora bien, si queremos correr un servidor apache >> http://localhost >> http://localhost/index.php
Tenemos que levantar el servicio >> service apache2 start
>> vamos la ruta >> /var/www/html/
ahi se encuentran el index.html y el index.php, para poder editarlos y testear a traves de metodos GET, POST, Javascript, etc ..."
sleep 2
