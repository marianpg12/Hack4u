#!/bin/bash
clear
echo "############################################"
echo "#    Docker: Primeros Pasos                #"
echo "############################################"
echo ""
sleep 1.2
figlet Instalando Docker
echo ">> sudo apt-get install docker.io"
echo ">> touch dockerfile
FROM ubuntu:latest

MAINTANCE Mariano Galeano"
sleep 2
echo ">> docker build -t my_first_image ."
echo ">> docker images
REPOSITORY       TAG       IMAGE ID       CREATED         SIZE
my_first_image   latest    6dddb26a0ec9   4 minutes ago   77.8MB
ubuntu           latest    b6548eacb063   5 days ago      77.8MB"
sleep 2
echo "Con esto, cree el primer contenedor en Docker con la ultima version de UBUNTU"
sleep 2
echo ">> docker run -dit --name myContainer my_first_image (nombre de la imagen que hemos creado)"
sleep 2
echo "Esto me va dar como resultado un choclo de caracteres hexadecimales"
echo ">> docker ps"
echo "Ahi puedo ver el contenedor recien creado desde la imagen"
sleep 1.5
echo ">> docker exec -it myContainer bash
Bien, ahora executamos en bash el Contenedor que hemos creado. Fijarse que cambia el nombre del hostname y la IP"
sleep 1.2
echo "docker rmi: Eliminar una imagen
docker rm: Eliminar un contenedor
docker pull: Descargar imagen desde registro
docker push: Subir imagen a un registro
docker exec: Ejecutar comando en contenedor
docker save: Guardar imagen en local
docker load: Cargar imagen desde local"
sleep 2

